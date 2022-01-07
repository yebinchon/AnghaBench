
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


 int itir_ps (unsigned long) ;
 unsigned long vcpu_get_gr (struct kvm_vcpu*,int ) ;
 int vcpu_ptr_d (struct kvm_vcpu*,unsigned long,int ) ;

void kvm_ptr_d(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long ifa, itir;

 ifa = vcpu_get_gr(vcpu, inst.M45.r3);
 itir = vcpu_get_gr(vcpu, inst.M45.r2);
 vcpu_ptr_d(vcpu, ifa, itir_ps(itir));
}
