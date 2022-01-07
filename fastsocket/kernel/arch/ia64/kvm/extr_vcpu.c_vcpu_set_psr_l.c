
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 unsigned long MASK (int,int) ;
 unsigned long vcpu_get_psr (struct kvm_vcpu*) ;
 int vcpu_set_psr (struct kvm_vcpu*,unsigned long) ;

void vcpu_set_psr_l(struct kvm_vcpu *vcpu, unsigned long val)
{
 val = (val & MASK(0, 32)) | (vcpu_get_psr(vcpu) & MASK(32, 32));
 vcpu_set_psr(vcpu, val);
}
