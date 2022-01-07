
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ __kvm_set_xcr (struct kvm_vcpu*,int ,int ) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;

int kvm_set_xcr(struct kvm_vcpu *vcpu, u32 index, u64 xcr)
{
 if (__kvm_set_xcr(vcpu, index, xcr)) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }
 return 0;
}
