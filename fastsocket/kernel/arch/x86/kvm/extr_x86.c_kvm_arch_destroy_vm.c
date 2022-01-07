
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm* aliases; scalar_t__ ept_identity_pagetable; scalar_t__ apic_access_page; struct kvm* vioapic; struct kvm* vpic; } ;
struct kvm {TYPE_1__ arch; int srcu; } ;


 int cleanup_srcu_struct (int *) ;
 int kfree (struct kvm*) ;
 int kvm_free_physmem (struct kvm*) ;
 int kvm_free_vcpus (struct kvm*) ;
 int kvm_iommu_unmap_guest (struct kvm*) ;
 int put_page (scalar_t__) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvm_iommu_unmap_guest(kvm);
 kfree(kvm->arch.vpic);
 kfree(kvm->arch.vioapic);
 kvm_free_vcpus(kvm);
 kvm_free_physmem(kvm);
 if (kvm->arch.apic_access_page)
  put_page(kvm->arch.apic_access_page);
 if (kvm->arch.ept_identity_pagetable)
  put_page(kvm->arch.ept_identity_pagetable);
 cleanup_srcu_struct(&kvm->srcu);
 kfree(kvm->arch.aliases);
 kfree(kvm);
}
