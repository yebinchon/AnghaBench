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
struct tda8083_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  symbol_rate; int /*<<< orphan*/  fec_inner; } ;
struct TYPE_6__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int /*<<< orphan*/  inversion; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_3__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct tda8083_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tda8083_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tda8083_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tda8083_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tda8083_state*,int,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
	struct tda8083_state* state = fe->demodulator_priv;

	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe, p);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	}

	FUNC3 (state, p->inversion);
	FUNC2 (state, p->u.qpsk.fec_inner);
	FUNC4 (state, p->u.qpsk.symbol_rate);

	FUNC5 (state, 0x00, 0x3c);
	FUNC5 (state, 0x00, 0x04);

	return 0;
}