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
struct TYPE_2__ {int /*<<< orphan*/  action; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int late_irq_cnt ; 
 TYPE_1__* saved_percpu_irqs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int xen_slab_ready ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;

	xen_slab_ready = 1;
	/* There's no race when accessing this cached array, since only
	 * BSP will face with such step shortly
	 */
	for (i = 0; i < late_irq_cnt; i++)
		FUNC0(FUNC1(),
					  saved_percpu_irqs[i].irq,
					  saved_percpu_irqs[i].action, 0);
}