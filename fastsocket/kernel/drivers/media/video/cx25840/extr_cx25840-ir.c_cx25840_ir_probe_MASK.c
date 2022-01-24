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
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {struct cx25840_ir_state* ir_state; int /*<<< orphan*/  c; } ;
struct cx25840_ir_state {int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  rx_params_lock; int /*<<< orphan*/  c; int /*<<< orphan*/  rx_kfifo; int /*<<< orphan*/  rx_kfifo_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX25840_IR_IRQEN_REG ; 
 int /*<<< orphan*/  CX25840_IR_RX_KFIFO_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQEN_MSK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_rx_params ; 
 int /*<<< orphan*/  default_tx_params ; 
 int /*<<< orphan*/  ir ; 
 scalar_t__ FUNC2 (struct cx25840_state*) ; 
 scalar_t__ FUNC3 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cx25840_ir_state*) ; 
 struct cx25840_ir_state* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev_ir_parameters*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_s_parameters ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct cx25840_state* FUNC10 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tx_s_parameters ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_ir_parameters*) ; 

int FUNC12(struct v4l2_subdev *sd)
{
	struct cx25840_state *state = FUNC10(sd);
	struct cx25840_ir_state *ir_state;
	struct v4l2_subdev_ir_parameters default_params;

	/* Only init the IR controller for the CX2388[57] AV Core for now */
	if (!(FUNC2(state) || FUNC3(state)))
		return 0;

	ir_state = FUNC6(sizeof(struct cx25840_ir_state), GFP_KERNEL);
	if (ir_state == NULL)
		return -ENOMEM;

	FUNC9(&ir_state->rx_kfifo_lock);
	ir_state->rx_kfifo = FUNC4(CX25840_IR_RX_KFIFO_SIZE, GFP_KERNEL,
				      &ir_state->rx_kfifo_lock);
	if (FUNC0(ir_state->rx_kfifo)) {
		FUNC5(ir_state);
		return -ENOMEM;
	}

	ir_state->c = state->c;
	state->ir_state = ir_state;

	/* Ensure no interrupts arrive yet */
	if (FUNC2(state) || FUNC3(state))
		FUNC1(ir_state->c, CX25840_IR_IRQEN_REG, IRQEN_MSK);
	else
		FUNC1(ir_state->c, CX25840_IR_IRQEN_REG, 0);

	FUNC8(&ir_state->rx_params_lock);
	FUNC7(&default_params, &default_rx_params,
		       sizeof(struct v4l2_subdev_ir_parameters));
	FUNC11(sd, ir, rx_s_parameters, &default_params);

	FUNC8(&ir_state->tx_params_lock);
	FUNC7(&default_params, &default_tx_params,
		       sizeof(struct v4l2_subdev_ir_parameters));
	FUNC11(sd, ir, tx_s_parameters, &default_params);

	return 0;
}