
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ia64_set_ibr (int ,int ) ;

__attribute__((used)) static inline void vcpu_set_ibr(struct kvm_vcpu *vcpu, u64 reg, u64 val)
{
 ia64_set_ibr(reg, val);
}
