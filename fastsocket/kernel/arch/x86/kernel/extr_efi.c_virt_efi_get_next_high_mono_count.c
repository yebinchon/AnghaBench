
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int efi_status_t ;


 int efi_call_virt1 (int ,int *) ;
 int get_next_high_mono_count ;

__attribute__((used)) static efi_status_t virt_efi_get_next_high_mono_count(u32 *count)
{
 return efi_call_virt1(get_next_high_mono_count, count);
}
