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
struct stv090x_state {int srate; scalar_t__ algo; int tuner_bw; int inversion; scalar_t__ delsys; int /*<<< orphan*/  FecTimeout; TYPE_1__* internal; int /*<<< orphan*/  DemodTimeout; TYPE_2__* config; int /*<<< orphan*/  frequency; int /*<<< orphan*/  rolloff; struct dvb_frontend frontend; } ;
typedef  scalar_t__ s32 ;
typedef  enum stv090x_signal_state { ____Placeholder_stv090x_signal_state } stv090x_signal_state ;
struct TYPE_4__ {scalar_t__ (* tuner_set_bbgain ) (struct dvb_frontend*,int) ;int tuner_bbgain; scalar_t__ (* tuner_set_frequency ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,int) ;scalar_t__ (* tuner_get_status ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_3__ {int dev_ver; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2REF ; 
 int /*<<< orphan*/  AGCIQIN0 ; 
 int /*<<< orphan*/  AGCIQIN1 ; 
 int /*<<< orphan*/  CORRELABS ; 
 int /*<<< orphan*/  CORRELMANT ; 
 int /*<<< orphan*/  DEMOD ; 
 int /*<<< orphan*/  DMDISTATE ; 
 int /*<<< orphan*/  DMDTOM ; 
 int /*<<< orphan*/  ERRCTRL1 ; 
 int /*<<< orphan*/  ERRCTRL2 ; 
 int /*<<< orphan*/  FBERCPT4 ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  KREFTMG ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  MANUAL_S2ROLLOFF_FIELD ; 
 int /*<<< orphan*/  MANUAL_SXROLLOFF_FIELD ; 
 int /*<<< orphan*/  PDELCTRL2 ; 
 int /*<<< orphan*/  POWERI ; 
 int /*<<< orphan*/  POWERQ ; 
 int /*<<< orphan*/  RESET_UPKO_COUNT ; 
 int /*<<< orphan*/  RST_HWARE_FIELD ; 
 int /*<<< orphan*/  SPECINV_CONTROL_FIELD ; 
 scalar_t__ STV090x_BLIND_SEARCH ; 
 scalar_t__ STV090x_COLD_SEARCH ; 
 scalar_t__ STV090x_DVBS2 ; 
 scalar_t__ STV090x_IQPOWER_THRESHOLD ; 
 int STV090x_NOAGC1 ; 
 int STV090x_NOCARRIER ; 
 int STV090x_NODATA ; 
 int STV090x_RANGEOK ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ STV090x_WARM_SEARCH ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TMGCFG ; 
 int /*<<< orphan*/  TMGCFG2 ; 
 int /*<<< orphan*/  TSCFGH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct dvb_frontend*,int) ; 
 scalar_t__ FUNC9 (struct dvb_frontend*,int*) ; 
 int FUNC10 (struct stv090x_state*) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct stv090x_state*) ; 
 scalar_t__ FUNC13 (struct stv090x_state*) ; 
 scalar_t__ FUNC14 (struct stv090x_state*) ; 
 int FUNC15 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct stv090x_state*) ; 
 int FUNC19 (struct stv090x_state*) ; 
 scalar_t__ FUNC20 (struct stv090x_state*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct stv090x_state*) ; 
 scalar_t__ FUNC22 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct stv090x_state*) ; 
 scalar_t__ FUNC25 (struct stv090x_state*,int) ; 
 scalar_t__ FUNC26 (struct stv090x_state*) ; 
 int FUNC27 (struct stv090x_state*) ; 

__attribute__((used)) static enum stv090x_signal_state FUNC28(struct stv090x_state *state)
{
	struct dvb_frontend *fe = &state->frontend;
	enum stv090x_signal_state signal_state = STV090x_NOCARRIER;
	u32 reg;
	s32 agc1_power, power_iq = 0, i;
	int lock = 0, low_sr = 0, no_signal = 0;

	reg = FUNC1(state, TSCFGH);
	FUNC2(reg, RST_HWARE_FIELD, 1); /* Stop path 1 stream merger */
	if (FUNC3(state, TSCFGH, reg) < 0)
		goto err;

	if (FUNC3(state, DMDISTATE, 0x5c) < 0) /* Demod stop */
		goto err;

	if (state->internal->dev_ver >= 0x20) {
		if (state->srate > 5000000) {
			if (FUNC3(state, CORRELABS, 0x9e) < 0)
				goto err;
		} else {
			if (FUNC3(state, CORRELABS, 0x82) < 0)
				goto err;
		}
	}

	FUNC18(state);

	if (state->algo == STV090x_BLIND_SEARCH) {
		state->tuner_bw = 2 * 36000000; /* wide bw for unknown srate */
		if (FUNC3(state, TMGCFG2, 0xc0) < 0) /* wider srate scan */
			goto err;
		if (FUNC3(state, CORRELMANT, 0x70) < 0)
			goto err;
		if (FUNC25(state, 1000000) < 0) /* inital srate = 1Msps */
			goto err;
	} else {
		/* known srate */
		if (FUNC3(state, DMDTOM, 0x20) < 0)
			goto err;
		if (FUNC3(state, TMGCFG, 0xd2) < 0)
			goto err;

		if (state->srate < 2000000) {
			/* SR < 2MSPS */
			if (FUNC3(state, CORRELMANT, 0x63) < 0)
				goto err;
		} else {
			/* SR >= 2Msps */
			if (FUNC3(state, CORRELMANT, 0x70) < 0)
				goto err;
		}

		if (FUNC3(state, AGC2REF, 0x38) < 0)
			goto err;

		if (state->internal->dev_ver >= 0x20) {
			if (FUNC3(state, KREFTMG, 0x5a) < 0)
				goto err;
			if (state->algo == STV090x_COLD_SEARCH)
				state->tuner_bw = (15 * (FUNC11(state->srate, state->rolloff) + 10000000)) / 10;
			else if (state->algo == STV090x_WARM_SEARCH)
				state->tuner_bw = FUNC11(state->srate, state->rolloff) + 10000000;
		}

		/* if cold start or warm  (Symbolrate is known)
		 * use a Narrow symbol rate scan range
		 */
		if (FUNC3(state, TMGCFG2, 0xc1) < 0) /* narrow srate scan */
			goto err;

		if (FUNC25(state, state->srate) < 0)
			goto err;

		if (FUNC22(state, state->internal->mclk,
					  state->srate) < 0)
			goto err;
		if (FUNC23(state, state->internal->mclk,
					  state->srate) < 0)
			goto err;

		if (state->srate >= 10000000)
			low_sr = 0;
		else
			low_sr = 1;
	}

	/* Setup tuner */
	if (FUNC20(state, 1) < 0)
		goto err;

	if (state->config->tuner_set_bbgain) {
		reg = state->config->tuner_bbgain;
		if (reg == 0)
			reg = 10; /* default: 10dB */
		if (state->config->tuner_set_bbgain(fe, reg) < 0)
			goto err_gateoff;
	}

	if (state->config->tuner_set_frequency) {
		if (state->config->tuner_set_frequency(fe, state->frequency) < 0)
			goto err_gateoff;
	}

	if (state->config->tuner_set_bandwidth) {
		if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
			goto err_gateoff;
	}

	if (FUNC20(state, 0) < 0)
		goto err;

	FUNC5(50);

	if (state->config->tuner_get_status) {
		if (FUNC20(state, 1) < 0)
			goto err;
		if (state->config->tuner_get_status(fe, &reg) < 0)
			goto err_gateoff;
		if (FUNC20(state, 0) < 0)
			goto err;

		if (reg)
			FUNC4(FE_DEBUG, 1, "Tuner phase locked");
		else {
			FUNC4(FE_DEBUG, 1, "Tuner unlocked");
			return STV090x_NOCARRIER;
		}
	}

	FUNC5(10);
	agc1_power = FUNC0(FUNC1(state, AGCIQIN1),
				FUNC1(state, AGCIQIN0));

	if (agc1_power == 0) {
		/* If AGC1 integrator value is 0
		 * then read POWERI, POWERQ
		 */
		for (i = 0; i < 5; i++) {
			power_iq += (FUNC1(state, POWERI) +
				     FUNC1(state, POWERQ)) >> 1;
		}
		power_iq /= 5;
	}

	if ((agc1_power == 0) && (power_iq < STV090x_IQPOWER_THRESHOLD)) {
		FUNC4(FE_ERROR, 1, "No Signal: POWER_IQ=0x%02x", power_iq);
		lock = 0;
		signal_state = STV090x_NOAGC1;
	} else {
		reg = FUNC1(state, DEMOD);
		FUNC2(reg, SPECINV_CONTROL_FIELD, state->inversion);

		if (state->internal->dev_ver <= 0x20) {
			/* rolloff to auto mode if DVBS2 */
			FUNC2(reg, MANUAL_SXROLLOFF_FIELD, 1);
		} else {
			/* DVB-S2 rolloff to auto mode if DVBS2 */
			FUNC2(reg, MANUAL_S2ROLLOFF_FIELD, 1);
		}
		if (FUNC3(state, DEMOD, reg) < 0)
			goto err;

		if (FUNC14(state) < 0)
			goto err;

		if (state->algo != STV090x_BLIND_SEARCH) {
			if (FUNC26(state) < 0)
				goto err;
		}
	}

	if (signal_state == STV090x_NOAGC1)
		return signal_state;

	if (state->algo == STV090x_BLIND_SEARCH)
		lock = FUNC10(state);

	else if (state->algo == STV090x_COLD_SEARCH)
		lock = FUNC15(state, state->DemodTimeout);

	else if (state->algo == STV090x_WARM_SEARCH)
		lock = FUNC16(state, state->DemodTimeout);

	if ((!lock) && (state->algo == STV090x_COLD_SEARCH)) {
		if (!low_sr) {
			if (FUNC13(state))
				lock = FUNC27(state);
		}
	}

	if (lock)
		signal_state = FUNC19(state);

	if ((lock) && (signal_state == STV090x_RANGEOK)) { /* signal within Range */
		FUNC21(state);

		if (state->internal->dev_ver >= 0x20) {
			/* >= Cut 2.0 :release TS reset after
			 * demod lock and optimized Tracking
			 */
			reg = FUNC1(state, TSCFGH);
			FUNC2(reg, RST_HWARE_FIELD, 0); /* release merger reset */
			if (FUNC3(state, TSCFGH, reg) < 0)
				goto err;

			FUNC5(3);

			FUNC2(reg, RST_HWARE_FIELD, 1); /* merger reset */
			if (FUNC3(state, TSCFGH, reg) < 0)
				goto err;

			FUNC2(reg, RST_HWARE_FIELD, 0); /* release merger reset */
			if (FUNC3(state, TSCFGH, reg) < 0)
				goto err;
		}

		lock = FUNC17(state, state->FecTimeout,
				state->FecTimeout);
		if (lock) {
			if (state->delsys == STV090x_DVBS2) {
				FUNC24(state);

				reg = FUNC1(state, PDELCTRL2);
				FUNC2(reg, RESET_UPKO_COUNT, 1);
				if (FUNC3(state, PDELCTRL2, reg) < 0)
					goto err;
				/* Reset DVBS2 packet delinator error counter */
				reg = FUNC1(state, PDELCTRL2);
				FUNC2(reg, RESET_UPKO_COUNT, 0);
				if (FUNC3(state, PDELCTRL2, reg) < 0)
					goto err;

				if (FUNC3(state, ERRCTRL1, 0x67) < 0) /* PER */
					goto err;
			} else {
				if (FUNC3(state, ERRCTRL1, 0x75) < 0)
					goto err;
			}
			/* Reset the Total packet counter */
			if (FUNC3(state, FBERCPT4, 0x00) < 0)
				goto err;
			/* Reset the packet Error counter2 */
			if (FUNC3(state, ERRCTRL2, 0xc1) < 0)
				goto err;
		} else {
			signal_state = STV090x_NODATA;
			no_signal = FUNC12(state);
		}
	}
	return signal_state;

err_gateoff:
	FUNC20(state, 0);
err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}