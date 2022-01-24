#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_pmu {int /*<<< orphan*/  fixed_ctr_ctrl; } ;
struct kvm_pmc {int /*<<< orphan*/  eventsel; } ;

/* Variables and functions */
 int X86_PMC_IDX_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmu*,int) ; 
 scalar_t__ FUNC2 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pmc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_pmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvm_pmu *pmu, int idx)
{
	struct kvm_pmc *pmc = FUNC1(pmu, idx);

	if (!pmc)
		return;

	if (FUNC2(pmc))
		FUNC4(pmc, pmc->eventsel);
	else {
		int fidx = idx - X86_PMC_IDX_FIXED;
		FUNC3(pmc,
				FUNC0(pmu->fixed_ctr_ctrl, fidx), fidx);
	}
}