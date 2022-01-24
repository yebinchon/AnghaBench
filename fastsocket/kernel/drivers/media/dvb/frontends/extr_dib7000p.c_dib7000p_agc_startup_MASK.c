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
typedef  int u8 ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* agc_control ) (int /*<<< orphan*/ *,int) ;} ;
struct dib7000p_state {int agc_state; int /*<<< orphan*/  demod; TYPE_2__ cfg; TYPE_1__* current_agc; } ;
struct TYPE_3__ {int wbd_sel; int wbd_alpha; int setup; int /*<<< orphan*/  perform_agc_softsplit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DIB7000P_POWER_ALL ; 
 int /*<<< orphan*/  DIBX000_ADC_ON ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*) ; 
 int FUNC2 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
	struct dib7000p_state *state = demod->demodulator_priv;
	int ret = -1;
	u8 *agc_state = &state->agc_state;
	u8 agc_split;

	switch (state->agc_state) {
		case 0:
			// set power-up level: interf+analog+AGC
			FUNC6(state, DIB7000P_POWER_ALL);
			FUNC4(state, DIBX000_ADC_ON);
			FUNC1(state);

			if (FUNC5(state, FUNC0(ch->frequency/1000)) != 0)
				return -1;

			ret = 7;
			(*agc_state)++;
			break;

		case 1:
			// AGC initialization
			if (state->cfg.agc_control)
				state->cfg.agc_control(&state->demod, 1);

			FUNC8(state, 78, 32768);
			if (!state->current_agc->perform_agc_softsplit) {
				/* we are using the wbd - so slow AGC startup */
				/* force 0 split on WBD and restart AGC */
				FUNC8(state, 106, (state->current_agc->wbd_sel << 13) | (state->current_agc->wbd_alpha << 9) | (1 << 8));
				(*agc_state)++;
				ret = 5;
			} else {
				/* default AGC startup */
				(*agc_state) = 4;
				/* wait AGC rough lock time */
				ret = 7;
			}

			FUNC3(state);
			break;

		case 2: /* fast split search path after 5sec */
			FUNC8(state,  75, state->current_agc->setup | (1 << 4)); /* freeze AGC loop */
			FUNC8(state, 106, (state->current_agc->wbd_sel << 13) | (2 << 9) | (0 << 8)); /* fast split search 0.25kHz */
			(*agc_state)++;
			ret = 14;
			break;

	case 3: /* split search ended */
			agc_split = (u8)FUNC2(state, 396); /* store the split value for the next time */
			FUNC8(state, 78, FUNC2(state, 394)); /* set AGC gain start value */

			FUNC8(state, 75,  state->current_agc->setup);   /* std AGC loop */
			FUNC8(state, 106, (state->current_agc->wbd_sel << 13) | (state->current_agc->wbd_alpha << 9) | agc_split); /* standard split search */

			FUNC3(state);

			FUNC9( "SPLIT %p: %hd", demod, agc_split);

			(*agc_state)++;
			ret = 5;
			break;

		case 4: /* LNA startup */
			// wait AGC accurate lock time
			ret = 7;

			if (FUNC7(state))
				// wait only AGC rough lock time
				ret = 5;
			else // nothing was done, go to the next state
				(*agc_state)++;
			break;

		case 5:
			if (state->cfg.agc_control)
				state->cfg.agc_control(&state->demod, 0);
			(*agc_state)++;
			break;
		default:
			break;
	}
	return ret;
}