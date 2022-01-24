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
typedef  union cx23888_ir_fifo_rec {int dummy; } cx23888_ir_fifo_rec ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int enable; scalar_t__ interrupt_enable; int /*<<< orphan*/  invert_level; int /*<<< orphan*/  invert_carrier_sense; int /*<<< orphan*/  resolution; scalar_t__ max_pulse_width; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  carrier_freq; int /*<<< orphan*/  modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  txclk_divider; struct v4l2_subdev_ir_parameters tx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 int /*<<< orphan*/  IRQEN_TSE ; 
 int /*<<< orphan*/  TX_FIFO_HALF_EMPTY ; 
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx23888_ir_state* FUNC13 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC14 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct cx23885_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct v4l2_subdev *sd,
				      struct v4l2_subdev_ir_parameters *p)
{
	struct cx23888_ir_state *state = FUNC13(sd);
	struct cx23885_dev *dev = state->dev;
	struct v4l2_subdev_ir_parameters *o = &state->tx_params;
	u16 txclk_divider;

	if (p->shutdown)
		return FUNC8(sd);

	if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
		return -ENOSYS;

	FUNC10(&state->tx_params_lock);

	o->shutdown = p->shutdown;

	o->mode = p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;

	o->bytes_per_data_element = p->bytes_per_data_element
				  = sizeof(union cx23888_ir_fifo_rec);

	/* Before we tweak the hardware, we have to disable the transmitter */
	FUNC9(dev, 0);
	FUNC3(dev, false);

	FUNC6(dev, p->modulation);
	o->modulation = p->modulation;

	if (p->modulation) {
		p->carrier_freq = FUNC14(dev, p->carrier_freq,
						     &txclk_divider);
		o->carrier_freq = p->carrier_freq;

		p->duty_cycle = FUNC1(dev, p->duty_cycle);
		o->duty_cycle = p->duty_cycle;

		p->max_pulse_width =
			(u32) FUNC12(FIFO_RXTX, txclk_divider);
	} else {
		p->max_pulse_width =
			    FUNC15(dev, p->max_pulse_width,
						       &txclk_divider);
	}
	o->max_pulse_width = p->max_pulse_width;
	FUNC0(&state->txclk_divider, txclk_divider);

	p->resolution = FUNC2(txclk_divider);
	o->resolution = p->resolution;

	/* FIXME - make this dependent on resolution for better performance */
	FUNC4(dev, TX_FIFO_HALF_EMPTY);

	FUNC7(dev, p->invert_carrier_sense);
	o->invert_carrier_sense = p->invert_carrier_sense;

	FUNC5(dev, p->invert_level);
	o->invert_level = p->invert_level;

	o->interrupt_enable = p->interrupt_enable;
	o->enable = p->enable;
	if (p->enable) {
		if (p->interrupt_enable)
			FUNC9(dev, IRQEN_TSE);
		FUNC3(dev, p->enable);
	}

	FUNC11(&state->tx_params_lock);
	return 0;
}