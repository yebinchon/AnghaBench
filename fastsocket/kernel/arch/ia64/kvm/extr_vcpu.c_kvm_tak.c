
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r1; int r3; } ;
struct TYPE_5__ {TYPE_1__ M46; } ;
typedef TYPE_2__ INST64 ;


 unsigned long vcpu_get_gr (struct kvm_vcpu*,int ) ;
 int vcpu_set_gr (struct kvm_vcpu*,int ,unsigned long,int ) ;
 unsigned long vcpu_tak (struct kvm_vcpu*,unsigned long) ;

void kvm_tak(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long r1, r3;

 r3 = vcpu_get_gr(vcpu, inst.M46.r3);
 r1 = vcpu_tak(vcpu, r3);
 vcpu_set_gr(vcpu, inst.M46.r1, r1, 0);
}
