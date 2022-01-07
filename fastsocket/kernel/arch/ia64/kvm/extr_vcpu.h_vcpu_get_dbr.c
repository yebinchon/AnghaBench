
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ __ia64_get_dbr (int ) ;

__attribute__((used)) static inline u64 vcpu_get_dbr(struct kvm_vcpu *vcpu, u64 reg)
{
 return ((u64)__ia64_get_dbr(reg));
}
