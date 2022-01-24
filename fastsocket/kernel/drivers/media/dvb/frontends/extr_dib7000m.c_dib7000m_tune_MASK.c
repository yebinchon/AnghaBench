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
typedef  int u16 ;
struct TYPE_3__ {int transmission_mode; int /*<<< orphan*/  bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {scalar_t__ timf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD ; 
 int EINVAL ; 
#define  TRANSMISSION_MODE_2K 130 
#define  TRANSMISSION_MODE_4K 129 
#define  TRANSMISSION_MODE_8K 128 
 int FUNC1 (struct dib7000m_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000m_state*,struct dvb_frontend_parameters*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000m_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000m_state*) ; 
 int FUNC6 (struct dib7000m_state*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
	struct dib7000m_state *state = demod->demodulator_priv;
	int ret = 0;
	u16 value;

	// we are already tuned - just resuming from suspend
	if (ch != NULL)
		FUNC3(state, ch, 0);
	else
		return -EINVAL;

	// restart demod
	ret |= FUNC6(state, 898, 0x4000);
	ret |= FUNC6(state, 898, 0x0000);
	FUNC7(45);

	FUNC4(state, DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD);
	/* P_ctrl_inh_cor=0, P_ctrl_alpha_cor=4, P_ctrl_inh_isi=0, P_ctrl_alpha_isi=3, P_ctrl_inh_cor4=1, P_ctrl_alpha_cor4=3 */
	ret |= FUNC6(state, 29, (0 << 14) | (4 << 10) | (0 << 9) | (3 << 5) | (1 << 4) | (0x3));

	// never achieved a lock before - wait for timfreq to update
	if (state->timf == 0)
		FUNC7(200);

	//dump_reg(state);
	/* P_timf_alpha, P_corm_alpha=6, P_corm_thres=0x80 */
	value = (6 << 8) | 0x80;
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: value |= (7 << 12); break;
		case TRANSMISSION_MODE_4K: value |= (8 << 12); break;
		default:
		case TRANSMISSION_MODE_8K: value |= (9 << 12); break;
	}
	ret |= FUNC6(state, 26, value);

	/* P_ctrl_freeze_pha_shift=0, P_ctrl_pha_off_max */
	value = (0 << 4);
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: value |= 0x6; break;
		case TRANSMISSION_MODE_4K: value |= 0x7; break;
		default:
		case TRANSMISSION_MODE_8K: value |= 0x8; break;
	}
	ret |= FUNC6(state, 32, value);

	/* P_ctrl_sfreq_inh=0, P_ctrl_sfreq_step */
	value = (0 << 4);
	switch (ch->u.ofdm.transmission_mode) {
		case TRANSMISSION_MODE_2K: value |= 0x6; break;
		case TRANSMISSION_MODE_4K: value |= 0x7; break;
		default:
		case TRANSMISSION_MODE_8K: value |= 0x8; break;
	}
	ret |= FUNC6(state, 33,  value);

	// we achieved a lock - it's time to update the timf freq
	if ((FUNC1(state, 535) >> 6)  & 0x1)
		FUNC5(state);

    FUNC2(state, FUNC0(ch->u.ofdm.bandwidth));
	return ret;
}