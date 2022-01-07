
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmu {int dummy; } ;
struct kvm_pmc {int dummy; } ;


 scalar_t__ MSR_P6_EVNTSEL0 ;
 int X86_PMC_IDX_FIXED ;
 struct kvm_pmc* get_fixed_pmc_idx (struct kvm_pmu*,int) ;
 struct kvm_pmc* get_gp_pmc (struct kvm_pmu*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct kvm_pmc *global_idx_to_pmc(struct kvm_pmu *pmu, int idx)
{
 if (idx < X86_PMC_IDX_FIXED)
  return get_gp_pmc(pmu, MSR_P6_EVNTSEL0 + idx, MSR_P6_EVNTSEL0);
 else
  return get_fixed_pmc_idx(pmu, idx - X86_PMC_IDX_FIXED);
}
