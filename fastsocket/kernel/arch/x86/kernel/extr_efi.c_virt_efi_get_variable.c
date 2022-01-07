
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;


 int efi_call_virt5 (int ,int *,int *,int *,unsigned long*,void*) ;
 int get_variable ;

__attribute__((used)) static efi_status_t virt_efi_get_variable(efi_char16_t *name,
       efi_guid_t *vendor,
       u32 *attr,
       unsigned long *data_size,
       void *data)
{
 return efi_call_virt5(get_variable,
         name, vendor, attr,
         data_size, data);
}
