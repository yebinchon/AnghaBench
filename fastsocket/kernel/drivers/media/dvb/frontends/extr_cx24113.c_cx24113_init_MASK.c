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
struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int tuner_gain_thres; int gain_level; int acp_on; int bs_delay; int bs_freqcnt; int bs_rdiv; int rfvga_bias_ctrl; int Fwindow_enabled; TYPE_1__* config; int /*<<< orphan*/  lna_gain; scalar_t__ prescaler_mode; int /*<<< orphan*/  vco_band; scalar_t__ vco_shift; scalar_t__ vco_mode; int /*<<< orphan*/  icp_man; void* icp_dig; void* icp_auto_low; void* icp_auto_mlow; void* icp_auto_mhi; void* icp_auto_hi; scalar_t__ icp_mode; } ;
struct TYPE_2__ {int xtal_khz; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICP_LEVEL1 ; 
 void* ICP_LEVEL2 ; 
 void* ICP_LEVEL3 ; 
 void* ICP_LEVEL4 ; 
 int /*<<< orphan*/  LNA_MAX_GAIN ; 
 int /*<<< orphan*/  VCOBANDSEL_1 ; 
 int /*<<< orphan*/  FUNC0 (struct cx24113_state*,int) ; 
 int FUNC1 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24113_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx24113_state*) ; 
 int FUNC7 (struct cx24113_state*,int,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe)
{
	struct cx24113_state *state = fe->tuner_priv;
	int ret;

	state->tuner_gain_thres = -50;
	state->gain_level = 255; /* to force a gain-setting initialization */
	state->icp_mode = 0;

	if (state->config->xtal_khz < 11000) {
		state->icp_auto_hi  = ICP_LEVEL4;
		state->icp_auto_mhi  = ICP_LEVEL4;
		state->icp_auto_mlow = ICP_LEVEL3;
		state->icp_auto_low = ICP_LEVEL3;
	} else {
		state->icp_auto_hi  = ICP_LEVEL4;
		state->icp_auto_mhi  = ICP_LEVEL4;
		state->icp_auto_mlow = ICP_LEVEL3;
		state->icp_auto_low = ICP_LEVEL2;
	}

	state->icp_dig = ICP_LEVEL3;
	state->icp_man = ICP_LEVEL1;
	state->acp_on  = 1;
	state->vco_mode = 0;
	state->vco_shift = 0;
	state->vco_band = VCOBANDSEL_1;
	state->bs_delay = 8;
	state->bs_freqcnt = 0x0fff;
	state->bs_rdiv = 0x0fff;
	state->prescaler_mode = 0;
	state->lna_gain = LNA_MAX_GAIN;
	state->rfvga_bias_ctrl = 1;
	state->Fwindow_enabled = 1;

	FUNC2(state, 0);
	FUNC0(state, 0x3d);
	FUNC6(state);

	FUNC5(state, -30);

	FUNC3(state, 18025);
	FUNC4(state, 1);

	if (state->config->xtal_khz >= 40000)
		ret = FUNC7(state, 0x02,
			(FUNC1(state, 0x02) & 0xfb) | (1 << 2));
	else
		ret = FUNC7(state, 0x02,
			(FUNC1(state, 0x02) & 0xfb) | (0 << 2));

	return ret;
}