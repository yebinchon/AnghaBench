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
struct TYPE_5__ {int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  fec_inner; } ;
struct TYPE_6__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int /*<<< orphan*/  inversion; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_4__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx24110_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24110_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24110_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx24110_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
	struct cx24110_state *state = fe->demodulator_priv;


	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe, p);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	}

	FUNC1 (state, p->inversion);
	FUNC0 (state, p->u.qpsk.fec_inner);
	FUNC2 (state, p->u.qpsk.symbol_rate);
	FUNC3(state,0x04,0x05); /* start aquisition */

	return 0;
}