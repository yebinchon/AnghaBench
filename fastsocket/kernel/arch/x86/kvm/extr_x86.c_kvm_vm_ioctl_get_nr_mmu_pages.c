
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_max_mmu_pages; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static int kvm_vm_ioctl_get_nr_mmu_pages(struct kvm *kvm)
{
 return kvm->arch.n_max_mmu_pages;
}
