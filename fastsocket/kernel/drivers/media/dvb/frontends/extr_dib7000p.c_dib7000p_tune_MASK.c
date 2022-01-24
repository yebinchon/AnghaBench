#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {int transmission_mode; int /*<<< orphan*/  bandwidth; } ;
struct TYPE_6__ {TYPE_2__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct TYPE_4__ {scalar_t__ spur_protect; } ;
struct dib7000p_state {scalar_t__ timf; TYPE_1__ cfg; scalar_t__ sfn_workaround_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  TRANSMISSION_MODE_2K 130 
#define  TRANSMISSION_MODE_4K 129 
#define  TRANSMISSION_MODE_8K 128 
 int FUNC1 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000p_state*,struct dvb_frontend_parameters*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
	struct dib7000p_state *state = demod->demodulator_priv;
	u16 tmp = 0;

	if (ch != NULL)
		FUNC3(state, ch, 0);
	else
		return -EINVAL;

	// restart demod
	FUNC6(state, 770, 0x4000);
	FUNC6(state, 770, 0x0000);
	FUNC8(45);

	/* P_ctrl_inh_cor=0, P_ctrl_alpha_cor=4, P_ctrl_inh_isi=0, P_ctrl_alpha_isi=3, P_ctrl_inh_cor4=1, P_ctrl_alpha_cor4=3 */
	tmp = (0 << 14) | (4 << 10) | (0 << 9) | (3 << 5) | (1 << 4) | (0x3);
	if (state->sfn_workaround_active) {
		FUNC7( "SFN workaround is active");
		tmp |= (1 << 9);
		FUNC6(state, 166, 0x4000); // P_pha3_force_pha_shift
	} else {
		FUNC6(state, 166, 0x0000); // P_pha3_force_pha_shift
	}
	FUNC6(state, 29, tmp);

	// never achieved a lock with that bandwidth so far - wait for osc-freq to update
	if (state->timf == 0)
		FUNC8(200);

	/* offset loop parameters */

	/* P_timf_alpha, P_corm_alpha=6, P_corm_thres=0x80 */
	tmp = (6 << 8) | 0x80;
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: tmp |= (7 << 12); break;
		case TRANSMISSION_MODE_4K: tmp |= (8 << 12); break;
		default:
		case TRANSMISSION_MODE_8K: tmp |= (9 << 12); break;
	}
	FUNC6(state, 26, tmp);  /* timf_a(6xxx) */

	/* P_ctrl_freeze_pha_shift=0, P_ctrl_pha_off_max */
	tmp = (0 << 4);
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: tmp |= 0x6; break;
		case TRANSMISSION_MODE_4K: tmp |= 0x7; break;
		default:
		case TRANSMISSION_MODE_8K: tmp |= 0x8; break;
	}
	FUNC6(state, 32,  tmp);

	/* P_ctrl_sfreq_inh=0, P_ctrl_sfreq_step */
	tmp = (0 << 4);
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: tmp |= 0x6; break;
		case TRANSMISSION_MODE_4K: tmp |= 0x7; break;
		default:
		case TRANSMISSION_MODE_8K: tmp |= 0x8; break;
	}
	FUNC6(state, 33,  tmp);

	tmp = FUNC1(state,509);
	if (!((tmp >> 6) & 0x1)) {
		/* restart the fec */
		tmp = FUNC1(state,771);
		FUNC6(state, 771, tmp | (1 << 1));
		FUNC6(state, 771, tmp);
		FUNC8(10);
		tmp = FUNC1(state,509);
	}

	// we achieved a lock - it's time to update the osc freq
	if ((tmp >> 6) & 0x1)
		FUNC5(state);

	if (state->cfg.spur_protect)
		FUNC4(state, ch->frequency/1000, FUNC0(ch->u.ofdm.bandwidth));

    FUNC2(state, FUNC0(ch->u.ofdm.bandwidth));
	return 0;
}