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
struct v4l2_subdev_ir_parameters {int shutdown; int enable; int interrupt_enable; } ;
struct cx23885_dev {int /*<<< orphan*/ * sd_ir; int /*<<< orphan*/  ir_input_stopping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ir ; 
 int /*<<< orphan*/  rx_g_parameters ; 
 int /*<<< orphan*/  rx_s_parameters ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_ir_parameters*) ; 

__attribute__((used)) static void FUNC3(struct cx23885_dev *dev)
{
	struct v4l2_subdev_ir_parameters params;

	if (dev->sd_ir == NULL)
		return;

	/*
	 * Stop the sd_ir subdevice from generating notifications and
	 * scheduling work.
	 * It is shutdown this way in order to mitigate a race with
	 * cx23885_input_rx_work_handler() in the overrun case, which could
	 * re-enable the subdevice.
	 */
	FUNC0(&dev->ir_input_stopping, 1);
	FUNC2(dev->sd_ir, ir, rx_g_parameters, &params);
	while (params.shutdown == false) {
		params.enable = false;
		params.interrupt_enable = false;
		params.shutdown = true;
		FUNC2(dev->sd_ir, ir, rx_s_parameters, &params);
		FUNC2(dev->sd_ir, ir, rx_g_parameters, &params);
	}

	FUNC1();
}