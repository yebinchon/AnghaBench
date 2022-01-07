
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode_flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GUEST_IN_PHY ;

void physical_mode_init(struct kvm_vcpu *vcpu)
{
 vcpu->arch.mode_flags = GUEST_IN_PHY;
}
