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
struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; } ;
struct cx23888_ir_state {int /*<<< orphan*/  rx_kfifo; int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  rx_params_lock; struct v4l2_subdev sd; scalar_t__ rev; int /*<<< orphan*/  id; struct cx23885_dev* dev; int /*<<< orphan*/  rx_kfifo_lock; } ;
struct cx23885_dev {char* name; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23885_HW_888_IR ; 
 int /*<<< orphan*/  CX23888_IR_IRQEN_REG ; 
 int /*<<< orphan*/  CX23888_IR_RX_KFIFO_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_IDENT_CX23888_IR ; 
 int /*<<< orphan*/  cx23888_ir_controller_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_rx_params ; 
 int /*<<< orphan*/  default_tx_params ; 
 int /*<<< orphan*/  ir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cx23888_ir_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev_ir_parameters*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_s_parameters ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_s_parameters ; 
 int FUNC9 (int /*<<< orphan*/ *,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,struct cx23888_ir_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_ir_parameters*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

int FUNC13(struct cx23885_dev *dev)
{
	struct cx23888_ir_state *state;
	struct v4l2_subdev *sd;
	struct v4l2_subdev_ir_parameters default_params;
	int ret;

	state = FUNC4(sizeof(struct cx23888_ir_state), GFP_KERNEL);
	if (state == NULL)
		return -ENOMEM;

	FUNC8(&state->rx_kfifo_lock);
	state->rx_kfifo = FUNC2(CX23888_IR_RX_KFIFO_SIZE, GFP_KERNEL,
				      &state->rx_kfifo_lock);
	if (FUNC0(state->rx_kfifo))
		return FUNC0(state->rx_kfifo);

	state->dev = dev;
	state->id = V4L2_IDENT_CX23888_IR;
	state->rev = 0;
	sd = &state->sd;

	FUNC12(sd, &cx23888_ir_controller_ops);
	FUNC10(sd, state);
	/* FIXME - fix the formatting of dev->v4l2_dev.name and use it */
	FUNC7(sd->name, sizeof(sd->name), "%s/888-ir", dev->name);
	sd->grp_id = CX23885_HW_888_IR;

	ret = FUNC9(&dev->v4l2_dev, sd);
	if (ret == 0) {
		/*
		 * Ensure no interrupts arrive from '888 specific conditions,
		 * since we ignore them in this driver to have commonality with
		 * similar IR controller cores.
		 */
		FUNC1(dev, CX23888_IR_IRQEN_REG, 0);

		FUNC6(&state->rx_params_lock);
		FUNC5(&default_params, &default_rx_params,
		       sizeof(struct v4l2_subdev_ir_parameters));
		FUNC11(sd, ir, rx_s_parameters, &default_params);

		FUNC6(&state->tx_params_lock);
		FUNC5(&default_params, &default_tx_params,
		       sizeof(struct v4l2_subdev_ir_parameters));
		FUNC11(sd, ir, tx_s_parameters, &default_params);
	} else {
		FUNC3(state->rx_kfifo);
	}
	return ret;
}