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
struct irq_desc {scalar_t__ depth; } ;
struct ipipe_domain {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * __ipipe_irq_lvdepth ; 
 int /*<<< orphan*/  __ipipe_irq_lvmask ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipipe_domain ipipe_root ; 
 struct irq_desc* FUNC3 (unsigned int) ; 

void FUNC4(struct ipipe_domain *ipd, unsigned irq)
{
	struct irq_desc *desc = FUNC3(irq);
	int prio = FUNC0(irq);

	desc->depth = 0;
	if (ipd != &ipipe_root &&
	    FUNC2(&__ipipe_irq_lvdepth[prio]) == 1)
		FUNC1(prio, &__ipipe_irq_lvmask);
}