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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct kvm_pmu {int nr_arch_fixed_counters; int /*<<< orphan*/  fixed_ctr_ctrl; } ;
struct kvm_pmc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct kvm_pmc* FUNC1 (struct kvm_pmu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmc*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_pmu *pmu, u64 data)
{
	int i;

	for (i = 0; i < pmu->nr_arch_fixed_counters; i++) {
		u8 en_pmi = FUNC0(data, i);
		struct kvm_pmc *pmc = FUNC1(pmu, i);

		if (FUNC0(pmu->fixed_ctr_ctrl, i) == en_pmi)
			continue;

		FUNC2(pmc, en_pmi, i);
	}

	pmu->fixed_ctr_ctrl = data;
}