
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_pmu {int * counter_bitmask; } ;
struct kvm_pmc {size_t type; TYPE_2__* vcpu; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;



__attribute__((used)) static inline u64 pmc_bitmask(struct kvm_pmc *pmc)
{
 struct kvm_pmu *pmu = &pmc->vcpu->arch.pmu;

 return pmu->counter_bitmask[pmc->type];
}
