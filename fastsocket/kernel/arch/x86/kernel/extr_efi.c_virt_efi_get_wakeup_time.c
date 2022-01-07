
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efi_time_t ;
typedef int efi_status_t ;
typedef int efi_bool_t ;


 int efi_call_virt3 (int ,int *,int *,int *) ;
 int get_wakeup_time ;

__attribute__((used)) static efi_status_t virt_efi_get_wakeup_time(efi_bool_t *enabled,
          efi_bool_t *pending,
          efi_time_t *tm)
{
 return efi_call_virt3(get_wakeup_time,
         enabled, pending, tm);
}
