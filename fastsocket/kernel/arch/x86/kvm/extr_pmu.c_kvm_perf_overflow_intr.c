
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {struct kvm_pmc* overflow_handler_context; } ;
struct kvm_pmu {int irq_work; int reprogram_pmi; } ;
struct kvm_pmc {TYPE_2__* vcpu; int idx; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct TYPE_4__ {int requests; TYPE_1__ arch; } ;


 int KVM_REQ_PMI ;
 int KVM_REQ_PMU ;
 int irq_work_queue (int *) ;
 int kvm_is_in_guest () ;
 int kvm_perf_overflow (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,unsigned long*) ;

__attribute__((used)) static void kvm_perf_overflow_intr(struct perf_event *perf_event,
  struct perf_sample_data *data, struct pt_regs *regs)
{
 struct kvm_pmc *pmc = perf_event->overflow_handler_context;
 struct kvm_pmu *pmu = &pmc->vcpu->arch.pmu;
 if (!test_and_set_bit(pmc->idx, (unsigned long *)&pmu->reprogram_pmi)) {
  kvm_perf_overflow(perf_event, data, regs);
  set_bit(KVM_REQ_PMU, &pmc->vcpu->requests);
  if (!kvm_is_in_guest())
   irq_work_queue(&pmc->vcpu->arch.pmu.irq_work);
  else
   set_bit(KVM_REQ_PMI, &pmc->vcpu->requests);
 }
}
