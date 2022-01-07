
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MSR_VM_CR ;
 int SVM_VM_CR_SVM_DISABLE ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static int is_disabled(void)
{
 u64 vm_cr;

 rdmsrl(MSR_VM_CR, vm_cr);
 if (vm_cr & (1 << SVM_VM_CR_SVM_DISABLE))
  return 1;

 return 0;
}
