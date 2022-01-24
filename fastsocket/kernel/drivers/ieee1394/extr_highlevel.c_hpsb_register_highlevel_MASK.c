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
struct hpsb_highlevel {scalar_t__ add_host; int /*<<< orphan*/  irq_list; int /*<<< orphan*/  hl_list; int /*<<< orphan*/  addr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  highlevel_for_each_host_reg ; 
 int /*<<< orphan*/  hl_drivers ; 
 int /*<<< orphan*/  hl_drivers_sem ; 
 int /*<<< orphan*/  hl_irqs ; 
 int /*<<< orphan*/  hl_irqs_lock ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_highlevel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_highlevel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct hpsb_highlevel *hl)
{
	unsigned long flags;

	FUNC2(hl);
	FUNC0(&hl->addr_list);

	FUNC1(&hl_drivers_sem);
	FUNC3(&hl->hl_list, &hl_drivers);
	FUNC5(&hl_drivers_sem);

	FUNC6(&hl_irqs_lock, flags);
	FUNC3(&hl->irq_list, &hl_irqs);
	FUNC7(&hl_irqs_lock, flags);

	if (hl->add_host)
		FUNC4(hl, highlevel_for_each_host_reg);
	return;
}