#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {struct kvm_pmc* overflow_handler_context; } ;
struct kvm_pmu {int /*<<< orphan*/  irq_work; int /*<<< orphan*/  reprogram_pmi; } ;
struct kvm_pmc {TYPE_2__* vcpu; int /*<<< orphan*/  idx; } ;
struct TYPE_3__ {struct kvm_pmu pmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  requests; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_PMI ; 
 int /*<<< orphan*/  KVM_REQ_PMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC5(struct perf_event *perf_event,
		struct perf_sample_data *data, struct pt_regs *regs)
{
	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
	struct kvm_pmu *pmu = &pmc->vcpu->arch.pmu;
	if (!FUNC4(pmc->idx, (unsigned long *)&pmu->reprogram_pmi)) {
		FUNC2(perf_event, data, regs);
		FUNC3(KVM_REQ_PMU, &pmc->vcpu->requests);
		/*
		 * Inject PMI. If vcpu was in a guest mode during NMI PMI
		 * can be ejected on a guest mode re-entry. Otherwise we can't
		 * be sure that vcpu wasn't executing hlt instruction at the
		 * time of vmexit and is not going to re-enter guest mode until,
		 * woken up. So we should wake it, but this is impossible from
		 * NMI context. Do it from irq work instead.
		 */
		if (!FUNC1())
			FUNC0(&pmc->vcpu->arch.pmu.irq_work);
		else
			FUNC3(KVM_REQ_PMI, &pmc->vcpu->requests);
	}
}