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
struct kvm_pmc {int /*<<< orphan*/ * perf_event; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*) ; 

__attribute__((used)) static void FUNC2(struct kvm_pmc *pmc)
{
	if (pmc->perf_event) {
		pmc->counter = FUNC1(pmc);
		FUNC0(pmc->perf_event);
		pmc->perf_event = NULL;
	}
}