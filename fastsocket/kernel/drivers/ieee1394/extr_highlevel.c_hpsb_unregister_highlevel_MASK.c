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
struct hpsb_highlevel {int /*<<< orphan*/  hl_list; int /*<<< orphan*/  irq_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  highlevel_for_each_host_unreg ; 
 int /*<<< orphan*/  hl_drivers_sem ; 
 int /*<<< orphan*/  hl_irqs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_highlevel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct hpsb_highlevel *hl)
{
	unsigned long flags;

	FUNC4(&hl_irqs_lock, flags);
	FUNC1(&hl->irq_list);
	FUNC5(&hl_irqs_lock, flags);

	FUNC0(&hl_drivers_sem);
	FUNC1(&hl->hl_list);
	FUNC3(&hl_drivers_sem);

	FUNC2(hl, highlevel_for_each_host_unreg);
}