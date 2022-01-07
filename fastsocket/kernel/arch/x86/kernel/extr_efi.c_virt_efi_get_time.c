
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_time_t ;
typedef int efi_time_cap_t ;
typedef int efi_status_t ;


 int efi_call_virt2 (int ,int *,int *) ;
 int get_time ;

__attribute__((used)) static efi_status_t virt_efi_get_time(efi_time_t *tm, efi_time_cap_t *tc)
{
 return efi_call_virt2(get_time, tm, tc);
}
