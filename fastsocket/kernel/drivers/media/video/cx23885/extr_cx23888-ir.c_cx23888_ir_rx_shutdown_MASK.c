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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx23888_ir_state {int /*<<< orphan*/  rx_params_lock; TYPE_1__ rx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTRL_EDG_NONE ; 
 int /*<<< orphan*/  CX23888_IR_RXCLK_REG ; 
 int /*<<< orphan*/  RXCLK_RCD ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cx23888_ir_state* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd)
{
	struct cx23888_ir_state *state = FUNC8(sd);
	struct cx23885_dev *dev = state->dev;

	FUNC6(&state->rx_params_lock);

	/* Disable or slow down all IR Rx circuits and counters */
	FUNC5(dev, 0);
	FUNC1(dev, false);
	FUNC0(dev, false);
	FUNC2(dev, CNTRL_EDG_NONE);
	FUNC4(dev, 0);
	FUNC3(dev, CX23888_IR_RXCLK_REG, RXCLK_RCD);

	state->rx_params.shutdown = true;

	FUNC7(&state->rx_params_lock);
	return 0;
}