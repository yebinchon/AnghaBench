
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pmu {scalar_t__ global_ovf_ctrl; scalar_t__ global_status; scalar_t__ global_ctrl; scalar_t__ fixed_ctr_ctrl; struct kvm_pmc* fixed_counters; struct kvm_pmc* gp_counters; int irq_work; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {scalar_t__ eventsel; scalar_t__ counter; } ;


 int X86_PMC_MAX_FIXED ;
 int X86_PMC_MAX_GENERIC ;
 int irq_work_sync (int *) ;
 int stop_counter (struct kvm_pmc*) ;

void kvm_pmu_reset(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 int i;

 irq_work_sync(&pmu->irq_work);
 for (i = 0; i < X86_PMC_MAX_GENERIC; i++) {
  struct kvm_pmc *pmc = &pmu->gp_counters[i];
  stop_counter(pmc);
  pmc->counter = pmc->eventsel = 0;
 }

 for (i = 0; i < X86_PMC_MAX_FIXED; i++)
  stop_counter(&pmu->fixed_counters[i]);

 pmu->fixed_ctr_ctrl = pmu->global_ctrl = pmu->global_status =
  pmu->global_ovf_ctrl = 0;
}
