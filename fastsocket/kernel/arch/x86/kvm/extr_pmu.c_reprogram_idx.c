
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmu {int fixed_ctr_ctrl; } ;
struct kvm_pmc {int eventsel; } ;


 int X86_PMC_IDX_FIXED ;
 int fixed_en_pmi (int ,int) ;
 struct kvm_pmc* global_idx_to_pmc (struct kvm_pmu*,int) ;
 scalar_t__ pmc_is_gp (struct kvm_pmc*) ;
 int reprogram_fixed_counter (struct kvm_pmc*,int ,int) ;
 int reprogram_gp_counter (struct kvm_pmc*,int ) ;

__attribute__((used)) static void reprogram_idx(struct kvm_pmu *pmu, int idx)
{
 struct kvm_pmc *pmc = global_idx_to_pmc(pmu, idx);

 if (!pmc)
  return;

 if (pmc_is_gp(pmc))
  reprogram_gp_counter(pmc, pmc->eventsel);
 else {
  int fidx = idx - X86_PMC_IDX_FIXED;
  reprogram_fixed_counter(pmc,
    fixed_en_pmi(pmu->fixed_ctr_ctrl, fidx), fidx);
 }
}
