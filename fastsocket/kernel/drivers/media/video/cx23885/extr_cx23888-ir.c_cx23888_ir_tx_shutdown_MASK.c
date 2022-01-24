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
struct cx23888_ir_state {int /*<<< orphan*/  tx_params_lock; TYPE_1__ tx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23888_IR_TXCLK_REG ; 
 int /*<<< orphan*/  TXCLK_TCD ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cx23888_ir_state* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct cx23888_ir_state *state = FUNC6(sd);
	struct cx23885_dev *dev = state->dev;

	FUNC4(&state->tx_params_lock);

	/* Disable or slow down all IR Tx circuits and counters */
	FUNC3(dev, 0);
	FUNC0(dev, false);
	FUNC1(dev, false);
	FUNC2(dev, CX23888_IR_TXCLK_REG, TXCLK_TCD);

	state->tx_params.shutdown = true;

	FUNC5(&state->tx_params_lock);
	return 0;
}