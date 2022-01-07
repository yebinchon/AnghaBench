
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r1; int r3; } ;
struct TYPE_5__ {TYPE_1__ M43; } ;
typedef TYPE_2__ INST64 ;


 unsigned long vcpu_get_gr (struct kvm_vcpu*,int ) ;
 unsigned long vcpu_get_ibr (struct kvm_vcpu*,unsigned long) ;
 int vcpu_set_gr (struct kvm_vcpu*,int ,unsigned long,int ) ;

void kvm_mov_from_ibr(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long r3, r1;

 r3 = vcpu_get_gr(vcpu, inst.M43.r3);
 r1 = vcpu_get_ibr(vcpu, r3);
 vcpu_set_gr(vcpu, inst.M43.r1, r1, 0);
}
