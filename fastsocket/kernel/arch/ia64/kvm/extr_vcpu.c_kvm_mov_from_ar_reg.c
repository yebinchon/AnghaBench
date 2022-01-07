
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r1; } ;
struct TYPE_5__ {TYPE_1__ M31; } ;
typedef TYPE_2__ INST64 ;


 unsigned long vcpu_get_itc (struct kvm_vcpu*) ;
 int vcpu_set_gr (struct kvm_vcpu*,int ,unsigned long,int ) ;

void kvm_mov_from_ar_reg(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long r1;

 r1 = vcpu_get_itc(vcpu);
 vcpu_set_gr(vcpu, inst.M31.r1, r1, 0);
}
