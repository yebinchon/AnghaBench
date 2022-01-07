
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int* last_pte_updated; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int shadow_accessed_mask ;

__attribute__((used)) static bool last_updated_pte_accessed(struct kvm_vcpu *vcpu)
{
 u64 *spte = vcpu->arch.last_pte_updated;

 return !!(spte && (*spte & shadow_accessed_mask));
}
