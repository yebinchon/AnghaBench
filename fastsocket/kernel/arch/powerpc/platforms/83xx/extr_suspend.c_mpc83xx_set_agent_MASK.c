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
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  config1; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMCCR1_USE_STATE ; 
 int /*<<< orphan*/  PMCER_PMCI ; 
 int /*<<< orphan*/  agent_thread_fn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* pmc_regs ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(&pmc_regs->config1, PMCCR1_USE_STATE);
	FUNC1(&pmc_regs->mask, PMCER_PMCI);

	FUNC0(agent_thread_fn, NULL, "PCI power mgt");
}