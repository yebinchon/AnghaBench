
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_time_t ;
typedef int efi_status_t ;


 int efi_call_virt1 (int ,int *) ;
 int set_time ;

__attribute__((used)) static efi_status_t virt_efi_set_time(efi_time_t *tm)
{
 return efi_call_virt1(set_time, tm);
}
