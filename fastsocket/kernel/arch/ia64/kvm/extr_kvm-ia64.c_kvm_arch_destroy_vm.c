
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vioapic; } ;
struct kvm {int srcu; TYPE_1__ arch; } ;


 int cleanup_srcu_struct (int *) ;
 int free_kvm (struct kvm*) ;
 int kfree (int ) ;
 int kvm_free_all_assigned_devices (struct kvm*) ;
 int kvm_free_physmem (struct kvm*) ;
 int kvm_iommu_unmap_guest (struct kvm*) ;
 int kvm_release_vm_pages (struct kvm*) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvm_iommu_unmap_guest(kvm);



 kfree(kvm->arch.vioapic);
 kvm_release_vm_pages(kvm);
 kvm_free_physmem(kvm);
 cleanup_srcu_struct(&kvm->srcu);
 free_kvm(kvm);
}
