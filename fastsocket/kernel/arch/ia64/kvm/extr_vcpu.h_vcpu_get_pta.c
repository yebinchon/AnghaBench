
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ VCPU (struct kvm_vcpu*,int ) ;
 int pta ;

__attribute__((used)) static inline u64 vcpu_get_pta(struct kvm_vcpu *vcpu)
{
 return ((u64)VCPU(vcpu, pta));
}
