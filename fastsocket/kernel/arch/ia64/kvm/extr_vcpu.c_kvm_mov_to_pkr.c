
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r2; int r3; } ;
struct TYPE_5__ {TYPE_1__ M42; } ;
typedef TYPE_2__ INST64 ;


 int vcpu_get_gr (struct kvm_vcpu*,int ) ;
 int vcpu_set_pkr (struct kvm_vcpu*,int ,int ) ;

void kvm_mov_to_pkr(struct kvm_vcpu *vcpu, INST64 inst)
{
 u64 r3, r2;

 r3 = vcpu_get_gr(vcpu, inst.M42.r3);
 r2 = vcpu_get_gr(vcpu, inst.M42.r2);
 vcpu_set_pkr(vcpu, r3, r2);
}
