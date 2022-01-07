
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int efi_call_virt3 (int ,unsigned long*,int *,int *) ;
 int get_next_variable ;

__attribute__((used)) static efi_status_t virt_efi_get_next_variable(unsigned long *name_size,
            efi_char16_t *name,
            efi_guid_t *vendor)
{
 return efi_call_virt3(get_next_variable,
         name_size, name, vendor);
}
