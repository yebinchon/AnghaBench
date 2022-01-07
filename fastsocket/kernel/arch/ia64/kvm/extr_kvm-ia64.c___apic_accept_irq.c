
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vpd {int * irr; } ;
struct TYPE_2__ {int irq_new_pending; int vpd; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int test_and_set_bit (int ,int *) ;
 struct vpd* to_host (int ,int ) ;

__attribute__((used)) static int __apic_accept_irq(struct kvm_vcpu *vcpu, uint64_t vector)
{
 struct vpd *vpd = to_host(vcpu->kvm, vcpu->arch.vpd);

 if (!test_and_set_bit(vector, &vpd->irr[0])) {
  vcpu->arch.irq_new_pending = 1;
  kvm_vcpu_kick(vcpu);
  return 1;
 }
 return 0;
}
