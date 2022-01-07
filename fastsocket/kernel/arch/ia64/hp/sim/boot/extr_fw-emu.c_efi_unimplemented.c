
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;


 int EFI_UNSUPPORTED ;

__attribute__((used)) static efi_status_t
efi_unimplemented (void)
{
 return EFI_UNSUPPORTED;
}
