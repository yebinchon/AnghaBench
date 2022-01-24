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
typedef  int u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int delsys; scalar_t__ search_mode; int rolloff; scalar_t__ algo; int srate; int DemodTimeout; TYPE_2__* internal; scalar_t__ tuner_bw; TYPE_1__* config; int /*<<< orphan*/  modulation; int /*<<< orphan*/  demod_mode; int /*<<< orphan*/  frame_len; int /*<<< orphan*/  fec; struct dvb_frontend frontend; } ;
typedef  int s32 ;
typedef  enum stv090x_rolloff { ____Placeholder_stv090x_rolloff } stv090x_rolloff ;
typedef  enum stv090x_modcod { ____Placeholder_stv090x_modcod } stv090x_modcod ;
struct TYPE_4__ {int dev_ver; int /*<<< orphan*/  mclk; } ;
struct TYPE_3__ {scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACLC ; 
 int /*<<< orphan*/  ACLC2S216A ; 
 int /*<<< orphan*/  ACLC2S232A ; 
 int /*<<< orphan*/  ACLC2S28 ; 
 int /*<<< orphan*/  ACLC2S2Q ; 
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  BCLC ; 
 int /*<<< orphan*/  CARFREQ ; 
 int /*<<< orphan*/  CCIR0 ; 
 int /*<<< orphan*/  CFR1 ; 
 int /*<<< orphan*/  CFR2 ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN_FIELD ; 
 int /*<<< orphan*/  DEMOD ; 
 int /*<<< orphan*/  DEMOD_MODCOD_FIELD ; 
 int /*<<< orphan*/  DEMOD_TYPE_FIELD ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DMDMODCOD ; 
 int /*<<< orphan*/  DVBS1_ENABLE_FIELD ; 
 int /*<<< orphan*/  DVBS2_ENABLE_FIELD ; 
 int /*<<< orphan*/  ERRCTRL1 ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  GAUSSR0 ; 
 int /*<<< orphan*/  MANUAL_SXROLLOFF_FIELD ; 
 int /*<<< orphan*/  ROLLOFF_CONTROL_FIELD ; 
 int /*<<< orphan*/  ROLLOFF_STATUS_FIELD ; 
 int /*<<< orphan*/  SCAN_ENABLE_FIELD ; 
 int /*<<< orphan*/  SFRLOW1 ; 
 int /*<<< orphan*/  SFRSTEP ; 
 int /*<<< orphan*/  SFRUP1 ; 
 int /*<<< orphan*/  STV090x_16APSK ; 
 int STV090x_16APSK_910 ; 
 int /*<<< orphan*/  STV090x_32APSK ; 
 int /*<<< orphan*/  STV090x_8PSK ; 
 int STV090x_8PSK_910 ; 
 scalar_t__ STV090x_BLIND_SEARCH ; 
#define  STV090x_DSS 131 
#define  STV090x_DVBS1 130 
#define  STV090x_DVBS2 129 
#define  STV090x_ERROR 128 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STV090x_LONG_FRAME ; 
 int /*<<< orphan*/  STV090x_PR12 ; 
 int /*<<< orphan*/  STV090x_QPSK ; 
 int STV090x_QPSK_910 ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ STV090x_SEARCH_AUTO ; 
 scalar_t__ STV090x_SEARCH_DSS ; 
 scalar_t__ STV090x_SEARCH_DVBS1 ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV090x_SINGLE ; 
 scalar_t__ STV090x_WARM_SEARCH ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGCFG2 ; 
 int /*<<< orphan*/  TMGOBS ; 
 int /*<<< orphan*/  VAVSRVIT ; 
 int /*<<< orphan*/  VITSCALE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct dvb_frontend*,scalar_t__) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct stv090x_state*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct stv090x_state*) ; 
 int FUNC11 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct stv090x_state*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct stv090x_state*) ; 
 scalar_t__ FUNC14 (struct stv090x_state*,int) ; 
 int FUNC15 (struct stv090x_state*,int,int) ; 
 int FUNC16 (struct stv090x_state*) ; 
 scalar_t__ FUNC17 (struct stv090x_state*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct stv090x_state*) ; 

__attribute__((used)) static int FUNC19(struct stv090x_state *state)
{
	struct dvb_frontend *fe = &state->frontend;

	enum stv090x_rolloff rolloff;
	enum stv090x_modcod modcod;

	s32 srate, pilots, aclc, f_1, f_0, i = 0, blind_tune = 0;
	u32 reg;

	srate  = FUNC11(state, state->internal->mclk);
	srate += FUNC12(state, srate);

	switch (state->delsys) {
	case STV090x_DVBS1:
	case STV090x_DSS:
		if (state->search_mode == STV090x_SEARCH_AUTO) {
			reg = FUNC1(state, DMDCFGMD);
			FUNC2(reg, DVBS1_ENABLE_FIELD, 1);
			FUNC2(reg, DVBS2_ENABLE_FIELD, 0);
			if (FUNC3(state, DMDCFGMD, reg) < 0)
				goto err;
		}
		reg = FUNC1(state, DEMOD);
		FUNC2(reg, ROLLOFF_CONTROL_FIELD, state->rolloff);
		FUNC2(reg, MANUAL_SXROLLOFF_FIELD, 0x01);
		if (FUNC3(state, DEMOD, reg) < 0)
			goto err;

		if (state->internal->dev_ver >= 0x30) {
			if (FUNC13(state) < 0)
				goto err;

			if (state->fec == STV090x_PR12) {
				if (FUNC3(state, GAUSSR0, 0x98) < 0)
					goto err;
				if (FUNC3(state, CCIR0, 0x18) < 0)
					goto err;
			} else {
				if (FUNC3(state, GAUSSR0, 0x18) < 0)
					goto err;
				if (FUNC3(state, CCIR0, 0x18) < 0)
					goto err;
			}
		}

		if (FUNC3(state, ERRCTRL1, 0x75) < 0)
			goto err;
		break;

	case STV090x_DVBS2:
		reg = FUNC1(state, DMDCFGMD);
		FUNC2(reg, DVBS1_ENABLE_FIELD, 0);
		FUNC2(reg, DVBS2_ENABLE_FIELD, 1);
		if (FUNC3(state, DMDCFGMD, reg) < 0)
			goto err;
		if (FUNC3(state, ACLC, 0) < 0)
			goto err;
		if (FUNC3(state, BCLC, 0) < 0)
			goto err;
		if (state->frame_len == STV090x_LONG_FRAME) {
			reg = FUNC1(state, DMDMODCOD);
			modcod = FUNC0(reg, DEMOD_MODCOD_FIELD);
			pilots = FUNC0(reg, DEMOD_TYPE_FIELD) & 0x01;
			aclc = FUNC15(state, modcod, pilots);
			if (modcod <= STV090x_QPSK_910) {
				FUNC3(state, ACLC2S2Q, aclc);
			} else if (modcod <= STV090x_8PSK_910) {
				if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
					goto err;
				if (FUNC3(state, ACLC2S28, aclc) < 0)
					goto err;
			}
			if ((state->demod_mode == STV090x_SINGLE) && (modcod > STV090x_8PSK_910)) {
				if (modcod <= STV090x_16APSK_910) {
					if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
						goto err;
					if (FUNC3(state, ACLC2S216A, aclc) < 0)
						goto err;
				} else {
					if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
						goto err;
					if (FUNC3(state, ACLC2S232A, aclc) < 0)
						goto err;
				}
			}
		} else {
			/*Carrier loop setting for short frame*/
			aclc = FUNC16(state);
			if (state->modulation == STV090x_QPSK) {
				if (FUNC3(state, ACLC2S2Q, aclc) < 0)
					goto err;
			} else if (state->modulation == STV090x_8PSK) {
				if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
					goto err;
				if (FUNC3(state, ACLC2S28, aclc) < 0)
					goto err;
			} else if (state->modulation == STV090x_16APSK) {
				if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
					goto err;
				if (FUNC3(state, ACLC2S216A, aclc) < 0)
					goto err;
			} else if (state->modulation == STV090x_32APSK)  {
				if (FUNC3(state, ACLC2S2Q, 0x2a) < 0)
					goto err;
				if (FUNC3(state, ACLC2S232A, aclc) < 0)
					goto err;
			}
		}

		FUNC3(state, ERRCTRL1, 0x67); /* PER */
		break;

	case STV090x_ERROR:
	default:
		reg = FUNC1(state, DMDCFGMD);
		FUNC2(reg, DVBS1_ENABLE_FIELD, 1);
		FUNC2(reg, DVBS2_ENABLE_FIELD, 1);
		if (FUNC3(state, DMDCFGMD, reg) < 0)
			goto err;
		break;
	}

	f_1 = FUNC1(state, CFR2);
	f_0 = FUNC1(state, CFR1);
	reg = FUNC1(state, TMGOBS);
	rolloff = FUNC0(reg, ROLLOFF_STATUS_FIELD);

	if (state->algo == STV090x_BLIND_SEARCH) {
		FUNC3(state, SFRSTEP, 0x00);
		reg = FUNC1(state, DMDCFGMD);
		FUNC2(reg, SCAN_ENABLE_FIELD, 0x00);
		FUNC2(reg, CFR_AUTOSCAN_FIELD, 0x00);
		if (FUNC3(state, DMDCFGMD, reg) < 0)
			goto err;
		if (FUNC3(state, TMGCFG2, 0xc1) < 0)
			goto err;

		if (FUNC17(state, srate) < 0)
			goto err;
		blind_tune = 1;

		if (FUNC8(state) < 0)
			goto err;
	}

	if (state->internal->dev_ver >= 0x20) {
		if ((state->search_mode == STV090x_SEARCH_DVBS1)	||
		    (state->search_mode == STV090x_SEARCH_DSS)		||
		    (state->search_mode == STV090x_SEARCH_AUTO)) {

			if (FUNC3(state, VAVSRVIT, 0x0a) < 0)
				goto err;
			if (FUNC3(state, VITSCALE, 0x00) < 0)
				goto err;
		}
	}

	if (FUNC3(state, AGC2REF, 0x38) < 0)
		goto err;

	/* AUTO tracking MODE */
	if (FUNC3(state, SFRUP1, 0x80) < 0)
		goto err;
	/* AUTO tracking MODE */
	if (FUNC3(state, SFRLOW1, 0x80) < 0)
		goto err;

	if ((state->internal->dev_ver >= 0x20) || (blind_tune == 1) ||
	    (state->srate < 10000000)) {
		/* update initial carrier freq with the found freq offset */
		if (FUNC3(state, CFRINIT1, f_1) < 0)
			goto err;
		if (FUNC3(state, CFRINIT0, f_0) < 0)
			goto err;
		state->tuner_bw = FUNC7(srate, state->rolloff) + 10000000;

		if ((state->internal->dev_ver >= 0x20) || (blind_tune == 1)) {

			if (state->algo != STV090x_WARM_SEARCH) {

				if (FUNC14(state, 1) < 0)
					goto err;

				if (state->config->tuner_set_bandwidth) {
					if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
						goto err_gateoff;
				}

				if (FUNC14(state, 0) < 0)
					goto err;

			}
		}
		if ((state->algo == STV090x_BLIND_SEARCH) || (state->srate < 10000000))
			FUNC5(50); /* blind search: wait 50ms for SR stabilization */
		else
			FUNC5(5);

		FUNC10(state);

		if (!(FUNC9(state, (state->DemodTimeout / 2)))) {
			if (FUNC3(state, DMDISTATE, 0x1f) < 0)
				goto err;
			if (FUNC3(state, CFRINIT1, f_1) < 0)
				goto err;
			if (FUNC3(state, CFRINIT0, f_0) < 0)
				goto err;
			if (FUNC3(state, DMDISTATE, 0x18) < 0)
				goto err;

			i = 0;

			while ((!(FUNC9(state, (state->DemodTimeout / 2)))) && (i <= 2)) {

				if (FUNC3(state, DMDISTATE, 0x1f) < 0)
					goto err;
				if (FUNC3(state, CFRINIT1, f_1) < 0)
					goto err;
				if (FUNC3(state, CFRINIT0, f_0) < 0)
					goto err;
				if (FUNC3(state, DMDISTATE, 0x18) < 0)
					goto err;
				i++;
			}
		}

	}

	if (state->internal->dev_ver >= 0x20) {
		if (FUNC3(state, CARFREQ, 0x49) < 0)
			goto err;
	}

	if ((state->delsys == STV090x_DVBS1) || (state->delsys == STV090x_DSS))
		FUNC18(state);

	return 0;

err_gateoff:
	FUNC14(state, 0);
err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}