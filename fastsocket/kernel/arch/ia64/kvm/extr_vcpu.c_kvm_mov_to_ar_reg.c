
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r2; } ;
struct TYPE_5__ {TYPE_1__ M29; } ;
typedef TYPE_2__ INST64 ;


 unsigned long vcpu_get_gr (struct kvm_vcpu*,int ) ;
 int vcpu_set_itc (struct kvm_vcpu*,unsigned long) ;

void kvm_mov_to_ar_reg(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long r2;

 r2 = vcpu_get_gr(vcpu, inst.M29.r2);
 vcpu_set_itc(vcpu, r2);
}
