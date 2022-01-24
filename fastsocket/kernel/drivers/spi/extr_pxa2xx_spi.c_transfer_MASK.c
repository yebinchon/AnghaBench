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
struct spi_message {int /*<<< orphan*/  queue; int /*<<< orphan*/  state; int /*<<< orphan*/  status; scalar_t__ actual_length; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct driver_data {scalar_t__ run; int /*<<< orphan*/  lock; int /*<<< orphan*/  pump_messages; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  busy; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int ESHUTDOWN ; 
 scalar_t__ QUEUE_RUNNING ; 
 scalar_t__ QUEUE_STOPPED ; 
 int /*<<< orphan*/  START_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct driver_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, struct spi_message *msg)
{
	struct driver_data *drv_data = FUNC2(spi->master);
	unsigned long flags;

	FUNC3(&drv_data->lock, flags);

	if (drv_data->run == QUEUE_STOPPED) {
		FUNC4(&drv_data->lock, flags);
		return -ESHUTDOWN;
	}

	msg->actual_length = 0;
	msg->status = -EINPROGRESS;
	msg->state = START_STATE;

	FUNC0(&msg->queue, &drv_data->queue);

	if (drv_data->run == QUEUE_RUNNING && !drv_data->busy)
		FUNC1(drv_data->workqueue, &drv_data->pump_messages);

	FUNC4(&drv_data->lock, flags);

	return 0;
}