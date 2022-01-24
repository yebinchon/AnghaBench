#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mask_set; } ;
struct TYPE_3__ {int /*<<< orphan*/  set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 unsigned long FUNC4 (unsigned int) ; 
 TYPE_2__* sun4m_irq_global ; 
 TYPE_1__** sun4m_irq_percpu ; 

__attribute__((used)) static void FUNC5(unsigned int irq_nr)
{
	unsigned long mask, flags;
	int cpu = FUNC3();

	mask = FUNC4(irq_nr);
	FUNC1(flags);
	if (irq_nr > 15)
		FUNC2(mask, &sun4m_irq_global->mask_set);
	else
		FUNC2(mask, &sun4m_irq_percpu[cpu]->set);
	FUNC0(flags);    
}