
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int* vrr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static inline u64 vcpu_get_rr(struct kvm_vcpu *vcpu, u64 reg)
{
 return vcpu->arch.vrr[reg>>61];
}
