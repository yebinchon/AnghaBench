#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dibx000_agc_config {int agc1_max; int agc1_min; int agc2_max; int agc2_min; int agc1_pt1; int agc1_pt2; int agc1_slope1; int agc1_slope2; int agc2_pt1; int agc2_pt2; int agc2_slope1; int agc2_slope2; } ;
struct dib3000mc_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ phase_noise_mode; int max_time; int agc_command1; int agc_command2; int pwm3_value; int ln_adc_level; scalar_t__ mobile_mode; struct dibx000_agc_config* agc; } ;

/* Variables and functions */
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_8K ; 
 int /*<<< orphan*/  FUNC0 (struct dib3000mc_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib3000mc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dib3000mc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib3000mc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib3000mc_state*,int,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *demod)
{
	struct dib3000mc_state *state = demod->demodulator_priv;
	struct dibx000_agc_config *agc = state->cfg->agc;

	// Restart Configuration
	FUNC4(state, 1027, 0x8000);
	FUNC4(state, 1027, 0x0000);

	// power up the demod + mobility configuration
	FUNC4(state, 140, 0x0000);
	FUNC4(state, 1031, 0);

	if (state->cfg->mobile_mode) {
		FUNC4(state, 139,  0x0000);
		FUNC4(state, 141,  0x0000);
		FUNC4(state, 175,  0x0002);
		FUNC4(state, 1032, 0x0000);
	} else {
		FUNC4(state, 139,  0x0001);
		FUNC4(state, 141,  0x0000);
		FUNC4(state, 175,  0x0000);
		FUNC4(state, 1032, 0x012C);
	}
	FUNC4(state, 1033, 0x0000);

	// P_clk_cfg
	FUNC4(state, 1037, 0x3130);

	// other configurations

	// P_ctrl_sfreq
	FUNC4(state, 33, (5 << 0));
	FUNC4(state, 88, (1 << 10) | (0x10 << 0));

	// Phase noise control
	// P_fft_phacor_inh, P_fft_phacor_cpe, P_fft_powrange
	FUNC4(state, 99, (1 << 9) | (0x20 << 0));

	if (state->cfg->phase_noise_mode == 0)
		FUNC4(state, 111, 0x00);
	else
		FUNC4(state, 111, 0x02);

	// P_agc_global
	FUNC4(state, 50, 0x8000);

	// agc setup misc
	FUNC3(state);

	// P_agc_counter_lock
	FUNC4(state, 53, 0x87);
	// P_agc_counter_unlock
	FUNC4(state, 54, 0x87);

	/* agc */
	FUNC4(state, 36, state->cfg->max_time);
	FUNC4(state, 37, (state->cfg->agc_command1 << 13) | (state->cfg->agc_command2 << 12) | (0x1d << 0));
	FUNC4(state, 38, state->cfg->pwm3_value);
	FUNC4(state, 39, state->cfg->ln_adc_level);

	// set_agc_loop_Bw
	FUNC4(state, 40, 0x0179);
	FUNC4(state, 41, 0x03f0);

	FUNC4(state, 42, agc->agc1_max);
	FUNC4(state, 43, agc->agc1_min);
	FUNC4(state, 44, agc->agc2_max);
	FUNC4(state, 45, agc->agc2_min);
	FUNC4(state, 46, (agc->agc1_pt1 << 8) | agc->agc1_pt2);
	FUNC4(state, 47, (agc->agc1_slope1 << 8) | agc->agc1_slope2);
	FUNC4(state, 48, (agc->agc2_pt1 << 8) | agc->agc2_pt2);
	FUNC4(state, 49, (agc->agc2_slope1 << 8) | agc->agc2_slope2);

// Begin: TimeOut registers
	// P_pha3_thres
	FUNC4(state, 110, 3277);
	// P_timf_alpha = 6, P_corm_alpha = 6, P_corm_thres = 0x80
	FUNC4(state,  26, 0x6680);
	// lock_mask0
	FUNC4(state, 1, 4);
	// lock_mask1
	FUNC4(state, 2, 4);
	// lock_mask2
	FUNC4(state, 3, 0x1000);
	// P_search_maxtrial=1
	FUNC4(state, 5, 1);

	FUNC0(state, 8000);

	// div_lock_mask
	FUNC4(state,  4, 0x814);

	FUNC4(state, 21, (1 << 9) | 0x164);
	FUNC4(state, 22, 0x463d);

	// Spurious rm cfg
	// P_cspu_regul, P_cspu_win_cut
	FUNC4(state, 120, 0x200f);
	// P_adp_selec_monit
	FUNC4(state, 134, 0);

	// Fec cfg
	FUNC4(state, 195, 0x10);

	// diversity register: P_dvsy_sync_wait..
	FUNC4(state, 180, 0x2FF0);

	// Impulse noise configuration
	FUNC1(state, 0, TRANSMISSION_MODE_8K);

	// output mode set-up
	FUNC2(state, OUTMODE_HIGH_Z);

	/* close the i2c-gate */
	FUNC4(state, 769, (1 << 7) );

	return 0;
}