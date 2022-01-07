
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int _IA64_REG_CR_DCR ;
 int ia64_setreg (int ,int ) ;

__attribute__((used)) static inline void vcpu_set_dcr(struct kvm_vcpu *vcpu, u64 val)
{
 ia64_setreg(_IA64_REG_CR_DCR, val);
}
