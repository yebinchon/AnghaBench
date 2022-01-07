
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pmu {int irq_work; TYPE_3__* fixed_counters; TYPE_2__* gp_counters; } ;
struct TYPE_4__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ idx; struct kvm_vcpu* vcpu; int type; } ;
struct TYPE_5__ {int idx; struct kvm_vcpu* vcpu; int type; } ;


 int KVM_PMC_FIXED ;
 int KVM_PMC_GP ;
 scalar_t__ X86_PMC_IDX_FIXED ;
 int X86_PMC_MAX_FIXED ;
 int X86_PMC_MAX_GENERIC ;
 int init_irq_work (int *,int ) ;
 int kvm_pmu_cpuid_update (struct kvm_vcpu*) ;
 int memset (struct kvm_pmu*,int ,int) ;
 int trigger_pmi ;

void kvm_pmu_init(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_pmu *pmu = &vcpu->arch.pmu;

 memset(pmu, 0, sizeof(*pmu));
 for (i = 0; i < X86_PMC_MAX_GENERIC; i++) {
  pmu->gp_counters[i].type = KVM_PMC_GP;
  pmu->gp_counters[i].vcpu = vcpu;
  pmu->gp_counters[i].idx = i;
 }
 for (i = 0; i < X86_PMC_MAX_FIXED; i++) {
  pmu->fixed_counters[i].type = KVM_PMC_FIXED;
  pmu->fixed_counters[i].vcpu = vcpu;
  pmu->fixed_counters[i].idx = i + X86_PMC_IDX_FIXED;
 }
 init_irq_work(&pmu->irq_work, trigger_pmi);
 kvm_pmu_cpuid_update(vcpu);
}
