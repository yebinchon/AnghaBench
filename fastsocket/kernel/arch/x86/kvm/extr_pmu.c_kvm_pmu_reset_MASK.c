#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_pmu {scalar_t__ global_ovf_ctrl; scalar_t__ global_status; scalar_t__ global_ctrl; scalar_t__ fixed_ctr_ctrl; struct kvm_pmc* fixed_counters; struct kvm_pmc* gp_counters; int /*<<< orphan*/  irq_work; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_pmc {scalar_t__ eventsel; scalar_t__ counter; } ;

/* Variables and functions */
 int X86_PMC_MAX_FIXED ; 
 int X86_PMC_MAX_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*) ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_pmu *pmu = &vcpu->arch.pmu;
	int i;

	FUNC0(&pmu->irq_work);
	for (i = 0; i < X86_PMC_MAX_GENERIC; i++) {
		struct kvm_pmc *pmc = &pmu->gp_counters[i];
		FUNC1(pmc);
		pmc->counter = pmc->eventsel = 0;
	}

	for (i = 0; i < X86_PMC_MAX_FIXED; i++)
		FUNC1(&pmu->fixed_counters[i]);

	pmu->fixed_ctr_ctrl = pmu->global_ctrl = pmu->global_status =
		pmu->global_ovf_ctrl = 0;
}