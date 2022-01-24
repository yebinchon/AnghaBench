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
struct etr_irq_parm {scalar_t__ eai; scalar_t__ pc1; scalar_t__ pc0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETR_EVENT_PORT0_CHANGE ; 
 int /*<<< orphan*/  ETR_EVENT_PORT1_CHANGE ; 
 int /*<<< orphan*/  ETR_EVENT_PORT_ALERT ; 
 int /*<<< orphan*/  etr_events ; 
 int /*<<< orphan*/  etr_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  time_sync_wq ; 

__attribute__((used)) static void FUNC2(struct etr_irq_parm *intparm)
{
	if (intparm->pc0)
		/* ETR port 0 state change. */
		FUNC1(ETR_EVENT_PORT0_CHANGE, &etr_events);
	if (intparm->pc1)
		/* ETR port 1 state change. */
		FUNC1(ETR_EVENT_PORT1_CHANGE, &etr_events);
	if (intparm->eai)
		/*
		 * ETR port alert on either port 0, 1 or both.
		 * Both ports are not up-to-date now.
		 */
		FUNC1(ETR_EVENT_PORT_ALERT, &etr_events);
	FUNC0(time_sync_wq, &etr_work);
}