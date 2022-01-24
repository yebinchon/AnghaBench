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
typedef  int u8 ;
struct kvm_pmc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 TYPE_1__* arch_events ; 
 size_t* fixed_pmc_events ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmc*) ; 

__attribute__((used)) static void FUNC3(struct kvm_pmc *pmc, u8 en_pmi, int idx)
{
	unsigned en = en_pmi & 0x3;
	bool pmi = en_pmi & 0x8;

	FUNC2(pmc);

	if (!en || !FUNC0(pmc))
		return;

	FUNC1(pmc, PERF_TYPE_HARDWARE,
			arch_events[fixed_pmc_events[idx]].event_type,
			!(en & 0x2), /* exclude user */
			!(en & 0x1), /* exclude kernel */
			pmi);
}