
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {struct kvm_pmc* overflow_handler_context; } ;
struct kvm_pmu {int global_status; } ;
struct kvm_pmc {int idx; TYPE_2__* vcpu; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int __set_bit (int ,unsigned long*) ;

__attribute__((used)) static void kvm_perf_overflow(struct perf_event *perf_event,
         struct perf_sample_data *data,
         struct pt_regs *regs)
{
 struct kvm_pmc *pmc = perf_event->overflow_handler_context;
 struct kvm_pmu *pmu = &pmc->vcpu->arch.pmu;
 __set_bit(pmc->idx, (unsigned long *)&pmu->global_status);
}
