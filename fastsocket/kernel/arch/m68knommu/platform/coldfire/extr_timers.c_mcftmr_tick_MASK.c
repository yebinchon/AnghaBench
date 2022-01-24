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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  MCFTIMER_TER ; 
 int MCFTIMER_TER_CAP ; 
 int MCFTIMER_TER_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  mcftmr_cnt ; 
 scalar_t__ mcftmr_cycles_per_jiffy ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dummy)
{
	/* Reset the ColdFire timer */
	FUNC1(MCFTIMER_TER_CAP | MCFTIMER_TER_REF, FUNC0(MCFTIMER_TER));

	mcftmr_cnt += mcftmr_cycles_per_jiffy;
	return FUNC2(irq, dummy);
}