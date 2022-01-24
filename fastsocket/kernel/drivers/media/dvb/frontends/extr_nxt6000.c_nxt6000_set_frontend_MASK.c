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
struct nxt6000_state {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {int /*<<< orphan*/  inversion; TYPE_4__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct nxt6000_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend* fe, struct dvb_frontend_parameters *param)
{
	struct nxt6000_state* state = fe->demodulator_priv;
	int result;

	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe, param);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	}

	if ((result = FUNC1(state, param->u.ofdm.bandwidth)) < 0)
		return result;
	if ((result = FUNC2(state, param->u.ofdm.guard_interval)) < 0)
		return result;
	if ((result = FUNC4(state, param->u.ofdm.transmission_mode)) < 0)
		return result;
	if ((result = FUNC3(state, param->inversion)) < 0)
		return result;

	FUNC0(500);
	return 0;
}