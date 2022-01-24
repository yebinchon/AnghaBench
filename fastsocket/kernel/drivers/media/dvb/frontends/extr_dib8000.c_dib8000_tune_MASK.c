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
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct TYPE_3__ {int bandwidth_hz; int isdbt_sb_mode; scalar_t__ isdbt_partial_reception; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
struct dib8000_state {scalar_t__ timf; int revision; TYPE_2__ fe; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib8000_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib8000_state*) ; 
 int FUNC4 (struct dib8000_state*,int,int) ; 
 int FUNC5 (struct dib8000_state*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct dib8000_state *state = fe->demodulator_priv;
	int ret = 0;
	u16 value, mode = FUNC5(state);

	// we are already tuned - just resuming from suspend
	if (state == NULL)
		return -EINVAL;

	FUNC1(state, state->fe.dtv_property_cache.bandwidth_hz / 1000);
	FUNC2(state, 0, 0);

	// restart demod
	ret |= FUNC4(state, 770, 0x4000);
	ret |= FUNC4(state, 770, 0x0000);
	FUNC6(45);

	/* P_ctrl_inh_cor=0, P_ctrl_alpha_cor=4, P_ctrl_inh_isi=0, P_ctrl_alpha_isi=3 */
	/*  ret |= dib8000_write_word(state, 29, (0 << 9) | (4 << 5) | (0 << 4) | (3 << 0) );  workaround inh_isi stays at 1 */

	// never achieved a lock before - wait for timfreq to update
	if (state->timf == 0) {
		if (state->fe.dtv_property_cache.isdbt_sb_mode == 1) {
			if (state->fe.dtv_property_cache.isdbt_partial_reception == 0)	// Sound Broadcasting mode 1 seg
				FUNC6(300);
			else	// Sound Broadcasting mode 3 seg
				FUNC6(500);
		} else		// 13 seg
			FUNC6(200);
	}
	//dump_reg(state);
	if (state->fe.dtv_property_cache.isdbt_sb_mode == 1) {
		if (state->fe.dtv_property_cache.isdbt_partial_reception == 0) {	// Sound Broadcasting mode 1 seg

			/* P_timf_alpha = (13-P_mode) , P_corm_alpha=6, P_corm_thres=0x40  alpha to check on board */
			FUNC4(state, 32, ((13 - mode) << 12) | (6 << 8) | 0x40);
			//dib8000_write_word(state, 32, (8 << 12) | (6 << 8) | 0x80);

			/*  P_ctrl_sfreq_step= (12-P_mode)   P_ctrl_sfreq_inh =0     P_ctrl_pha_off_max  */
			ret |= FUNC4(state, 37, (12 - mode) | ((5 + mode) << 5));

		} else {	// Sound Broadcasting mode 3 seg

			/* P_timf_alpha = (12-P_mode) , P_corm_alpha=6, P_corm_thres=0x60  alpha to check on board */
			FUNC4(state, 32, ((12 - mode) << 12) | (6 << 8) | 0x60);

			ret |= FUNC4(state, 37, (11 - mode) | ((5 + mode) << 5));
		}

	} else {		// 13 seg
		/* P_timf_alpha = 8 , P_corm_alpha=6, P_corm_thres=0x80  alpha to check on board */
		FUNC4(state, 32, ((11 - mode) << 12) | (6 << 8) | 0x80);

		ret |= FUNC4(state, 37, (10 - mode) | ((5 + mode) << 5));

	}

	// we achieved a coff_cpil_lock - it's time to update the timf
	if ((FUNC0(state, 568) >> 11) & 0x1)
		FUNC3(state);

	//now that tune is finished, lock0 should lock on fec_mpeg to output this lock on MP_LOCK. It's changed in autosearch start
	FUNC4(state, 6, 0x200);

	if (state->revision == 0x8002) {
		value = FUNC0(state, 903);
		FUNC4(state, 903, value & ~(1 << 3));
		FUNC6(1);
		FUNC4(state, 903, value | (1 << 3));
	}

	return ret;
}