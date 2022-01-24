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
struct ipipe_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * __ipipe_irq_lvdepth ; 
 int /*<<< orphan*/  __ipipe_irq_lvmask ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipipe_domain ipipe_root ; 

void FUNC3(struct ipipe_domain *ipd, unsigned irq)
{
	int prio = FUNC1(irq);

	if (ipd != &ipipe_root &&
	    FUNC2(&__ipipe_irq_lvdepth[prio]))
		FUNC0(prio, &__ipipe_irq_lvmask);
}