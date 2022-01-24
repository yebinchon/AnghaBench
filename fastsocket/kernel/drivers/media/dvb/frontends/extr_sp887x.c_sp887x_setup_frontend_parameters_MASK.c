#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sp887x_state {int dummy; } ;
struct TYPE_7__ {scalar_t__ bandwidth; scalar_t__ transmission_mode; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {unsigned int frequency; TYPE_4__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_frequency ) (struct dvb_frontend*,unsigned int*) ;int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct sp887x_state* demodulator_priv; } ;

/* Variables and functions */
 scalar_t__ BANDWIDTH_6_MHZ ; 
 scalar_t__ BANDWIDTH_7_MHZ ; 
 scalar_t__ BANDWIDTH_8_MHZ ; 
 int EINVAL ; 
 scalar_t__ TRANSMISSION_MODE_2K ; 
 int FUNC0 (struct dvb_frontend_parameters*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sp887x_state*,struct dvb_frontend_parameters*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sp887x_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct sp887x_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct sp887x_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sp887x_state*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (struct dvb_frontend* fe,
					     struct dvb_frontend_parameters *p)
{
	struct sp887x_state* state = fe->demodulator_priv;
	unsigned actual_freq;
	int err;
	u16 val, reg0xc05;

	if (p->u.ofdm.bandwidth != BANDWIDTH_8_MHZ &&
	    p->u.ofdm.bandwidth != BANDWIDTH_7_MHZ &&
	    p->u.ofdm.bandwidth != BANDWIDTH_6_MHZ)
		return -EINVAL;

	if ((err = FUNC0(p, &reg0xc05)))
		return err;

	FUNC3(state);

	/* setup the PLL */
	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe, p);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	}
	if (fe->ops.tuner_ops.get_frequency) {
		fe->ops.tuner_ops.get_frequency(fe, &actual_freq);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	} else {
		actual_freq = p->frequency;
	}

	/* read status reg in order to clear <pending irqs */
	FUNC4(state, 0x200);

	FUNC1(state, p, actual_freq);

	/* filter for 6/7/8 Mhz channel */
	if (p->u.ofdm.bandwidth == BANDWIDTH_6_MHZ)
		val = 2;
	else if (p->u.ofdm.bandwidth == BANDWIDTH_7_MHZ)
		val = 1;
	else
		val = 0;

	FUNC5(state, 0x311, val);

	/* scan order: 2k first = 0, 8k first = 1 */
	if (p->u.ofdm.transmission_mode == TRANSMISSION_MODE_2K)
		FUNC5(state, 0x338, 0x000);
	else
		FUNC5(state, 0x338, 0x001);

	FUNC5(state, 0xc05, reg0xc05);

	if (p->u.ofdm.bandwidth == BANDWIDTH_6_MHZ)
		val = 2 << 3;
	else if (p->u.ofdm.bandwidth == BANDWIDTH_7_MHZ)
		val = 3 << 3;
	else
		val = 0 << 3;

	/* enable OFDM and SAW bits as lock indicators in sync register 0xf17,
	 * optimize algorithm for given bandwidth...
	 */
	FUNC5(state, 0xf14, 0x160 | val);
	FUNC5(state, 0xf15, 0x000);

	FUNC2(state);
	return 0;
}