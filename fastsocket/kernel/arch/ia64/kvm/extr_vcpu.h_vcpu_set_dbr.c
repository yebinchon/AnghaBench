
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int __ia64_set_dbr (int ,int ) ;

__attribute__((used)) static inline void vcpu_set_dbr(struct kvm_vcpu *vcpu, u64 reg, u64 val)
{
 __ia64_set_dbr(reg, val);
}
