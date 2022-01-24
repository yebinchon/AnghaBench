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
struct driver_data {scalar_t__ run; int /*<<< orphan*/  pump_messages; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cur_chip; int /*<<< orphan*/ * cur_transfer; int /*<<< orphan*/ * cur_msg; scalar_t__ busy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ QUEUE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct driver_data *drv_data)
{
	unsigned long flags;

	FUNC1(&drv_data->lock, flags);

	if (drv_data->run == QUEUE_RUNNING || drv_data->busy) {
		FUNC2(&drv_data->lock, flags);
		return -EBUSY;
	}

	drv_data->run = QUEUE_RUNNING;
	drv_data->cur_msg = NULL;
	drv_data->cur_transfer = NULL;
	drv_data->cur_chip = NULL;
	FUNC2(&drv_data->lock, flags);

	FUNC0(drv_data->workqueue, &drv_data->pump_messages);

	return 0;
}