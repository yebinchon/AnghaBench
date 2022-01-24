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
struct hvcs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  todo_mask; int /*<<< orphan*/  vdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HVCS_SCHED_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_instance)
{
	struct hvcs_struct *hvcsd = dev_instance;

	FUNC1(&hvcsd->lock);
	FUNC3(hvcsd->vdev);
	hvcsd->todo_mask |= HVCS_SCHED_READ;
	FUNC2(&hvcsd->lock);
	FUNC0();

	return IRQ_HANDLED;
}