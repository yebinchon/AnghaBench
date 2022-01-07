
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_sources_bitmap; int assigned_dev_head; int vmm_init_rr; int metaphysical_rr4; int metaphysical_rr0; } ;
struct kvm {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 int GUEST_PHYSICAL_RR0 ;
 int GUEST_PHYSICAL_RR4 ;
 int INIT_LIST_HEAD (int *) ;
 int KVM_USERSPACE_IRQ_SOURCE_ID ;
 int VMM_INIT_RR ;
 int kvm_build_io_pmt (struct kvm*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void kvm_init_vm(struct kvm *kvm)
{
 BUG_ON(!kvm);

 kvm->arch.metaphysical_rr0 = GUEST_PHYSICAL_RR0;
 kvm->arch.metaphysical_rr4 = GUEST_PHYSICAL_RR4;
 kvm->arch.vmm_init_rr = VMM_INIT_RR;




 kvm_build_io_pmt(kvm);

 INIT_LIST_HEAD(&kvm->arch.assigned_dev_head);


 set_bit(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);
}
