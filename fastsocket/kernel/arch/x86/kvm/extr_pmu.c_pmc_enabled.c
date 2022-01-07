
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_pmu {int global_ctrl; } ;
struct kvm_pmc {int idx; TYPE_2__* vcpu; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline bool pmc_enabled(struct kvm_pmc *pmc)
{
 struct kvm_pmu *pmu = &pmc->vcpu->arch.pmu;
 return test_bit(pmc->idx, (unsigned long *)&pmu->global_ctrl);
}
