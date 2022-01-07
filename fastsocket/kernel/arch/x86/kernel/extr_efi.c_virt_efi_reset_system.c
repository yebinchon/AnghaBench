
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_status_t ;
typedef int efi_char16_t ;


 int efi_call_virt4 (int ,int,int ,unsigned long,int *) ;
 int reset_system ;

__attribute__((used)) static void virt_efi_reset_system(int reset_type,
      efi_status_t status,
      unsigned long data_size,
      efi_char16_t *data)
{
 efi_call_virt4(reset_system, reset_type, status,
         data_size, data);
}
