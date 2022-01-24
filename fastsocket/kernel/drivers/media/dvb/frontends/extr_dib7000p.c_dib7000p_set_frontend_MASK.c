#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ constellation; scalar_t__ code_rate_HP; } ;
struct TYPE_9__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_4__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_7__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib7000p_state* demodulator_priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  output_mode; } ;
struct dib7000p_state {TYPE_5__ cfg; scalar_t__ agc_state; int /*<<< orphan*/  sfn_workaround_active; } ;

/* Variables and functions */
 scalar_t__ FEC_AUTO ; 
 scalar_t__ GUARD_INTERVAL_AUTO ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 scalar_t__ QAM_AUTO ; 
 scalar_t__ TRANSMISSION_MODE_AUTO ; 
 int /*<<< orphan*/  buggy_sfn_workaround ; 
 int FUNC0 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend* fe,
				struct dvb_frontend_parameters *fep)
{
	struct dib7000p_state *state = fe->demodulator_priv;
	int time, ret;

	FUNC4(state, OUTMODE_HIGH_Z);

    /* maybe the parameter has been changed */
	state->sfn_workaround_active = buggy_sfn_workaround;

	if (fe->ops.tuner_ops.set_params)
		fe->ops.tuner_ops.set_params(fe, fep);

	/* start up the AGC */
	state->agc_state = 0;
	do {
		time = FUNC0(fe, fep);
		if (time != -1)
			FUNC7(time);
	} while (time != -1);

	if (fep->u.ofdm.transmission_mode == TRANSMISSION_MODE_AUTO ||
		fep->u.ofdm.guard_interval    == GUARD_INTERVAL_AUTO ||
		fep->u.ofdm.constellation     == QAM_AUTO ||
		fep->u.ofdm.code_rate_HP      == FEC_AUTO) {
		int i = 800, found;

		FUNC2(fe, fep);
		do {
			FUNC7(1);
			found = FUNC1(fe);
		} while (found == 0 && i--);

		FUNC6("autosearch returns: %d",found);
		if (found == 0 || found == 1)
			return 0; // no channel found

		FUNC3(fe, fep);
	}

	ret = FUNC5(fe, fep);

	/* make this a config parameter */
	FUNC4(state, state->cfg.output_mode);
    return ret;
}