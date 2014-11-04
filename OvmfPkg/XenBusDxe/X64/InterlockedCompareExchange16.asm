;------------------------------------------------------------------------------
;
; Copyright (c) 2006, Intel Corporation. All rights reserved.<BR>
; This program and the accompanying materials
; are licensed and made available under the terms and conditions of the BSD License
; which accompanies this distribution.  The full text of the license may be found at
; http://opensource.org/licenses/bsd-license.php.
;
; THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
; WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
;
; Module Name:
;
;   InterlockedCompareExchange16.Asm
;
; Abstract:
;
;   InterlockedCompareExchange16 function
;
; Notes:
;
;------------------------------------------------------------------------------

    .code

;------------------------------------------------------------------------------
; UINT16
; EFIAPI
; InterlockedCompareExchange16 (
;   IN      UINT16                    *Value,
;   IN      UINT16                    CompareValue,
;   IN      UINT16                    ExchangeValue
;   );
;------------------------------------------------------------------------------
InternalSyncCompareExchange16   PROC
    mov     eax, edx
    lock    cmpxchg [rcx], r8w
    ret
InternalSyncCompareExchange16   ENDP

    END