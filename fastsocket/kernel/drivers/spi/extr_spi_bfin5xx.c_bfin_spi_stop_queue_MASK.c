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
struct driver_data {int /*<<< orphan*/  lock; scalar_t__ busy; int /*<<< orphan*/  queue; int /*<<< orphan*/  run; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QUEUE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC4(struct driver_data *drv_data)
{
	unsigned long flags;
	unsigned limit = 500;
	int status = 0;

	FUNC2(&drv_data->lock, flags);

	/*
	 * This is a bit lame, but is optimized for the common execution path.
	 * A wait_queue on the drv_data->busy could be used, but then the common
	 * execution path (pump_messages) would be required to call wake_up or
	 * friends on every SPI message. Do this instead
	 */
	drv_data->run = QUEUE_STOPPED;
	while (!FUNC0(&drv_data->queue) && drv_data->busy && limit--) {
		FUNC3(&drv_data->lock, flags);
		FUNC1(10);
		FUNC2(&drv_data->lock, flags);
	}

	if (!FUNC0(&drv_data->queue) || drv_data->busy)
		status = -EBUSY;

	FUNC3(&drv_data->lock, flags);

	return status;
}