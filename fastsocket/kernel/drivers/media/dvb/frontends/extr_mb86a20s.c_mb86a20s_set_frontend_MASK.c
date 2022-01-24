#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mb86a20s_state {scalar_t__ need_init; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct mb86a20s_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  mb86a20s_reset_reception ; 
 int FUNC2 (struct mb86a20s_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe,
	struct dvb_frontend_parameters *p)
{
	struct mb86a20s_state *state = fe->demodulator_priv;
	int rc;

	FUNC0("\n");

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	FUNC0("Calling tuner set parameters\n");
	fe->ops.tuner_ops.set_params(fe, p);

	/*
	 * Make it more reliable: if, for some reason, the initial
	 * device initialization doesn't happen, initialize it when
	 * a SBTVD parameters are adjusted.
	 *
	 * Unfortunately, due to a hard to track bug at tda829x/tda18271,
	 * the agc callback logic is not called during DVB attach time,
	 * causing mb86a20s to not be initialized with Kworld SBTVD.
	 * So, this hack is needed, in order to make Kworld SBTVD to work.
	 */
	if (state->need_init)
		FUNC1(fe);

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);
	rc = FUNC2(state, mb86a20s_reset_reception);
	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);

	return rc;
}