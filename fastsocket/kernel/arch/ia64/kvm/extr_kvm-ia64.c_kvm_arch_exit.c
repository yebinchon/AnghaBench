
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int kvm_free_vmm_area () ;
 int * kvm_vmm_info ;

void kvm_arch_exit(void)
{
 kvm_free_vmm_area();
 kfree(kvm_vmm_info);
 kvm_vmm_info = ((void*)0);
}
