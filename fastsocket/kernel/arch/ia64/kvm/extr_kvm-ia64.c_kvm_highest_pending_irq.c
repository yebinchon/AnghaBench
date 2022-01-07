
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpd {unsigned long* irr; } ;
struct TYPE_2__ {int vpd; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 unsigned long ExtINT_VECTOR ;
 unsigned long NMI_VECTOR ;
 int find_highest_bits (int*) ;
 struct vpd* to_host (int ,int ) ;

int kvm_highest_pending_irq(struct kvm_vcpu *vcpu)
{
    struct vpd *vpd = to_host(vcpu->kvm, vcpu->arch.vpd);

    if (vpd->irr[0] & (1UL << NMI_VECTOR))
  return NMI_VECTOR;
    if (vpd->irr[0] & (1UL << ExtINT_VECTOR))
  return ExtINT_VECTOR;

    return find_highest_bits((int *)&vpd->irr[0]);
}
