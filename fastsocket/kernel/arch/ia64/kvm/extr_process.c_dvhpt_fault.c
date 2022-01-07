
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int _vhpt_fault (struct kvm_vcpu*,int ) ;

void dvhpt_fault(struct kvm_vcpu *vcpu, u64 vadr)
{
 _vhpt_fault(vcpu, vadr);
}
