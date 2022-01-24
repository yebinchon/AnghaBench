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
struct brcms_info {int /*<<< orphan*/  isr_lock; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  wlc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct brcms_info *wl;
	irqreturn_t ret = IRQ_NONE;

	wl = (struct brcms_info *) dev_id;

	FUNC1(&wl->isr_lock);

	/* call common first level interrupt handler */
	if (FUNC0(wl->wlc)) {
		/* schedule second level handler */
		FUNC3(&wl->tasklet);
		ret = IRQ_HANDLED;
	}

	FUNC2(&wl->isr_lock);

	return ret;
}