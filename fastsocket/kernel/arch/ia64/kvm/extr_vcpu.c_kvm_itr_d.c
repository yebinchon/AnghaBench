
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int r2; int r3; } ;
struct TYPE_5__ {TYPE_1__ M45; } ;
typedef TYPE_2__ INST64 ;


 unsigned long vcpu_get_gr (struct kvm_vcpu*,int ) ;
 unsigned long vcpu_get_ifa (struct kvm_vcpu*) ;
 unsigned long vcpu_get_itir (struct kvm_vcpu*) ;
 int vcpu_itr_d (struct kvm_vcpu*,unsigned long,unsigned long,unsigned long,unsigned long) ;

void kvm_itr_d(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long itir, ifa, pte, slot;

 slot = vcpu_get_gr(vcpu, inst.M45.r3);
 pte = vcpu_get_gr(vcpu, inst.M45.r2);
 itir = vcpu_get_itir(vcpu);
 ifa = vcpu_get_ifa(vcpu);
 vcpu_itr_d(vcpu, slot, pte, itir, ifa);
}
