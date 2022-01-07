
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int KVM_SAVE_MSRS_BEGIN ;
 int * msrs_to_save ;
 unsigned int num_msrs_to_save ;
 scalar_t__ rdmsr_safe (int ,int *,int *) ;

__attribute__((used)) static void kvm_init_msr_list(void)
{
 u32 dummy[2];
 unsigned i, j;


 for (i = j = KVM_SAVE_MSRS_BEGIN; i < ARRAY_SIZE(msrs_to_save); i++) {
  if (rdmsr_safe(msrs_to_save[i], &dummy[0], &dummy[1]) < 0)
   continue;
  if (j < i)
   msrs_to_save[j] = msrs_to_save[i];
  j++;
 }
 num_msrs_to_save = j;
}
