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
typedef  void* u32 ;
struct stb0899_internal {int srate; int inversion; scalar_t__ status; int master_clk; int modcod; int pilots; int frame_length; scalar_t__ freq; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; int /*<<< orphan*/  frontend; TYPE_1__* config; struct stb0899_internal internal; } ;
typedef  int s32 ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;
typedef  enum stb0899_modcod { ____Placeholder_stb0899_modcod } stb0899_modcod ;
struct TYPE_2__ {int /*<<< orphan*/  (* tuner_get_frequency ) (int /*<<< orphan*/ *,scalar_t__*) ;int /*<<< orphan*/  (* tuner_set_frequency ) (int /*<<< orphan*/ *,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRL_FREQ ; 
 int /*<<< orphan*/  CRL_NOM_FREQ ; 
 int /*<<< orphan*/  CSM_CNTRL1 ; 
 int /*<<< orphan*/  CSM_TWO_PASS ; 
 int /*<<< orphan*/  DMD_CNTRL2 ; 
 scalar_t__ DVBS2_DEMOD_LOCK ; 
 scalar_t__ DVBS2_FEC_LOCK ; 
 int /*<<< orphan*/  EQ_CNTRL ; 
 int /*<<< orphan*/  EQ_DISABLE_UPDATE ; 
 int /*<<< orphan*/  EQ_SHIFT ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FRESRS ; 
 int /*<<< orphan*/  IF_AGC_CNTRL ; 
 int /*<<< orphan*/  IF_AGC_CNTRL2 ; 
 int /*<<< orphan*/  IF_AGC_DUMP_PER ; 
 int /*<<< orphan*/  IF_AGC_REF ; 
 int /*<<< orphan*/  IF_LOOP_GAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  IQ_SWAP_AUTO 130 
#define  IQ_SWAP_OFF 129 
#define  IQ_SWAP_ON 128 
 int /*<<< orphan*/  SPECTRUM_INVERT ; 
 int /*<<< orphan*/  STB0899_BASE_CRL_NOM_FREQ ; 
 int /*<<< orphan*/  STB0899_BASE_CSM_CNTRL1 ; 
 int /*<<< orphan*/  STB0899_BASE_DMD_CNTRL2 ; 
 int /*<<< orphan*/  STB0899_BASE_EQ_CNTRL ; 
 int /*<<< orphan*/  STB0899_BASE_IF_AGC_CNTRL ; 
 int /*<<< orphan*/  STB0899_BASE_IF_AGC_CNTRL2 ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  STB0899_OFF0_CRL_NOM_FREQ ; 
 int /*<<< orphan*/  STB0899_OFF0_CSM_CNTRL1 ; 
 int /*<<< orphan*/  STB0899_OFF0_DMD_CNTRL2 ; 
 int /*<<< orphan*/  STB0899_OFF0_EQ_CNTRL ; 
 int /*<<< orphan*/  STB0899_OFF0_IF_AGC_CNTRL ; 
 int /*<<< orphan*/  STB0899_OFF0_IF_AGC_CNTRL2 ; 
 int /*<<< orphan*/  STB0899_QPSK_12 ; 
 int /*<<< orphan*/  STB0899_QPSK_23 ; 
 int /*<<< orphan*/  STB0899_QPSK_35 ; 
 int /*<<< orphan*/  STB0899_QPSK_910 ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  STB0899_TSTRES ; 
 int /*<<< orphan*/  UWP_DECODE_MOD ; 
 int /*<<< orphan*/  UWP_STAT2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC5 (struct stb0899_state*,int) ; 
 void* FUNC6 (struct stb0899_state*,int) ; 
 int FUNC7 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct stb0899_state*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 void* FUNC12 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stb0899_state*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__*) ; 

enum stb0899_status FUNC17(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	enum stb0899_modcod modcod;

	s32 offsetfreq, searchTime, FecLockTime, pilots, iqSpectrum;
	int i = 0;
	u32 reg, csm1;

	if (internal->srate <= 2000000) {
		searchTime	= 5000;	/* 5000 ms max time to lock UWP and CSM, SYMB <= 2Mbs		*/
		FecLockTime	= 350;	/* 350  ms max time to lock FEC, SYMB <= 2Mbs			*/
	} else if (internal->srate <= 5000000) {
		searchTime	= 2500;	/* 2500 ms max time to lock UWP and CSM, 2Mbs < SYMB <= 5Mbs	*/
		FecLockTime	= 170;	/* 170  ms max time to lock FEC, 2Mbs< SYMB <= 5Mbs		*/
	} else if (internal->srate <= 10000000) {
		searchTime	= 1500;	/* 1500 ms max time to lock UWP and CSM, 5Mbs <SYMB <= 10Mbs	*/
		FecLockTime	= 80;	/* 80  ms max time to lock FEC, 5Mbs< SYMB <= 10Mbs		*/
	} else if (internal->srate <= 15000000) {
		searchTime	= 500;	/* 500 ms max time to lock UWP and CSM, 10Mbs <SYMB <= 15Mbs	*/
		FecLockTime	= 50;	/* 50  ms max time to lock FEC, 10Mbs< SYMB <= 15Mbs		*/
	} else if (internal->srate <= 20000000) {
		searchTime	= 300;	/* 300 ms max time to lock UWP and CSM, 15Mbs < SYMB <= 20Mbs	*/
		FecLockTime	= 30;	/* 50  ms max time to lock FEC, 15Mbs< SYMB <= 20Mbs		*/
	} else if (internal->srate <= 25000000) {
		searchTime	= 250;	/* 250 ms max time to lock UWP and CSM, 20 Mbs < SYMB <= 25Mbs	*/
		FecLockTime	= 25;	/* 25 ms max time to lock FEC, 20Mbs< SYMB <= 25Mbs		*/
	} else {
		searchTime	= 150;	/* 150 ms max time to lock UWP and CSM, SYMB > 25Mbs		*/
		FecLockTime	= 20;	/* 20 ms max time to lock FEC, 20Mbs< SYMB <= 25Mbs		*/
	}

	/* Maintain Stream Merger in reset during acquisition	*/
	reg = FUNC12(state, STB0899_TSTRES);
	FUNC3(FRESRS, reg, 1);
	FUNC13(state, STB0899_TSTRES, reg);

	/* enable tuner I/O */
	FUNC11(&state->frontend, 1);

	/* Move tuner to frequency	*/
	if (state->config->tuner_set_frequency)
		state->config->tuner_set_frequency(&state->frontend, internal->freq);
	if (state->config->tuner_get_frequency)
		state->config->tuner_get_frequency(&state->frontend, &internal->freq);

	/* disable tuner I/O */
	FUNC11(&state->frontend, 0);

	/* Set IF AGC to acquisition	*/
	reg = FUNC2(STB0899_S2DEMOD, IF_AGC_CNTRL);
	FUNC3(IF_LOOP_GAIN, reg,  4);
	FUNC3(IF_AGC_REF, reg, 32);
	FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL, STB0899_OFF0_IF_AGC_CNTRL, reg);

	reg = FUNC2(STB0899_S2DEMOD, IF_AGC_CNTRL2);
	FUNC3(IF_AGC_DUMP_PER, reg, 0);
	FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL2, STB0899_OFF0_IF_AGC_CNTRL2, reg);

	/* Initialisation	*/
	FUNC8(state);

	reg = FUNC2(STB0899_S2DEMOD, DMD_CNTRL2);
	switch (internal->inversion) {
	case IQ_SWAP_OFF:
		FUNC3(SPECTRUM_INVERT, reg, 0);
		break;
	case IQ_SWAP_ON:
		FUNC3(SPECTRUM_INVERT, reg, 1);
		break;
	case IQ_SWAP_AUTO:	/* use last successful search first	*/
		FUNC3(SPECTRUM_INVERT, reg, 1);
		break;
	}
	FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_DMD_CNTRL2, STB0899_OFF0_DMD_CNTRL2, reg);
	FUNC10(state);

	/* Wait for demod lock (UWP and CSM)	*/
	internal->status = FUNC5(state, searchTime);

	if (internal->status == DVBS2_DEMOD_LOCK) {
		FUNC4(state->verbose, FE_DEBUG, 1, "------------> DVB-S2 DEMOD LOCK !");
		i = 0;
		/* Demod Locked, check FEC status	*/
		internal->status = FUNC6(state, FecLockTime);

		/*If false lock (UWP and CSM Locked but no FEC) try 3 time max*/
		while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {
			/*	Read the frequency offset*/
			offsetfreq = FUNC2(STB0899_S2DEMOD, CRL_FREQ);

			/* Set the Nominal frequency to the found frequency offset for the next reacquire*/
			reg = FUNC2(STB0899_S2DEMOD, CRL_NOM_FREQ);
			FUNC3(CRL_NOM_FREQ, reg, offsetfreq);
			FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);
			FUNC10(state);
			internal->status = FUNC6(state, searchTime);
			i++;
		}
	}

	if (internal->status != DVBS2_FEC_LOCK) {
		if (internal->inversion == IQ_SWAP_AUTO) {
			reg = FUNC2(STB0899_S2DEMOD, DMD_CNTRL2);
			iqSpectrum = FUNC1(SPECTRUM_INVERT, reg);
			/* IQ Spectrum Inversion	*/
			FUNC3(SPECTRUM_INVERT, reg, !iqSpectrum);
			FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_DMD_CNTRL2, STB0899_OFF0_DMD_CNTRL2, reg);
			/* start acquistion process	*/
			FUNC10(state);

			/* Wait for demod lock (UWP and CSM)	*/
			internal->status = FUNC5(state, searchTime);
			if (internal->status == DVBS2_DEMOD_LOCK) {
				i = 0;
				/* Demod Locked, check FEC	*/
				internal->status = FUNC6(state, FecLockTime);
				/*try thrice for false locks, (UWP and CSM Locked but no FEC)	*/
				while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {
					/*	Read the frequency offset*/
					offsetfreq = FUNC2(STB0899_S2DEMOD, CRL_FREQ);

					/* Set the Nominal frequency to the found frequency offset for the next reacquire*/
					reg = FUNC2(STB0899_S2DEMOD, CRL_NOM_FREQ);
					FUNC3(CRL_NOM_FREQ, reg, offsetfreq);
					FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);

					FUNC10(state);
					internal->status = FUNC6(state, searchTime);
					i++;
				}
			}
/*
			if (pParams->DVBS2State == FE_DVBS2_FEC_LOCKED)
				pParams->IQLocked = !iqSpectrum;
*/
		}
	}
	if (internal->status == DVBS2_FEC_LOCK) {
		FUNC4(state->verbose, FE_DEBUG, 1, "----------------> DVB-S2 FEC Lock !");
		reg = FUNC2(STB0899_S2DEMOD, UWP_STAT2);
		modcod = FUNC1(UWP_DECODE_MOD, reg) >> 2;
		pilots = FUNC1(UWP_DECODE_MOD, reg) & 0x01;

		if ((((10 * internal->master_clk) / (internal->srate / 10)) <= 410) &&
		      (FUNC0(STB0899_QPSK_23, modcod, STB0899_QPSK_910)) &&
		      (pilots == 1)) {

			FUNC9(state, pilots, modcod);
			/* Wait for UWP,CSM and data LOCK 20ms max	*/
			internal->status = FUNC6(state, FecLockTime);

			i = 0;
			while ((internal->status != DVBS2_FEC_LOCK) && (i < 3)) {
				csm1 = FUNC2(STB0899_S2DEMOD, CSM_CNTRL1);
				FUNC3(CSM_TWO_PASS, csm1, 1);
				FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);
				csm1 = FUNC2(STB0899_S2DEMOD, CSM_CNTRL1);
				FUNC3(CSM_TWO_PASS, csm1, 0);
				FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, csm1);

				internal->status = FUNC6(state, FecLockTime);
				i++;
			}
		}

		if ((((10 * internal->master_clk) / (internal->srate / 10)) <= 410) &&
		      (FUNC0(STB0899_QPSK_12, modcod, STB0899_QPSK_35)) &&
		      (pilots == 1)) {

			/* Equalizer Disable update	 */
			reg = FUNC2(STB0899_S2DEMOD, EQ_CNTRL);
			FUNC3(EQ_DISABLE_UPDATE, reg, 1);
			FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_EQ_CNTRL, STB0899_OFF0_EQ_CNTRL, reg);
		}

		/* slow down the Equalizer once locked	*/
		reg = FUNC2(STB0899_S2DEMOD, EQ_CNTRL);
		FUNC3(EQ_SHIFT, reg, 0x02);
		FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_EQ_CNTRL, STB0899_OFF0_EQ_CNTRL, reg);

		/* Store signal parameters	*/
		offsetfreq = FUNC2(STB0899_S2DEMOD, CRL_FREQ);

		offsetfreq = offsetfreq / ((1 << 30) / 1000);
		offsetfreq *= (internal->master_clk / 1000000);
		reg = FUNC2(STB0899_S2DEMOD, DMD_CNTRL2);
		if (FUNC1(SPECTRUM_INVERT, reg))
			offsetfreq *= -1;

		internal->freq = internal->freq - offsetfreq;
		internal->srate = FUNC7(state);

		reg = FUNC2(STB0899_S2DEMOD, UWP_STAT2);
		internal->modcod = FUNC1(UWP_DECODE_MOD, reg) >> 2;
		internal->pilots = FUNC1(UWP_DECODE_MOD, reg) & 0x01;
		internal->frame_length = (FUNC1(UWP_DECODE_MOD, reg) >> 1) & 0x01;

		 /* Set IF AGC to tracking	*/
		reg = FUNC2(STB0899_S2DEMOD, IF_AGC_CNTRL);
		FUNC3(IF_LOOP_GAIN, reg,  3);

		/* if QPSK 1/2,QPSK 3/5 or QPSK 2/3 set IF AGC reference to 16 otherwise 32*/
		if (FUNC0(STB0899_QPSK_12, internal->modcod, STB0899_QPSK_23))
			FUNC3(IF_AGC_REF, reg, 16);

		FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL, STB0899_OFF0_IF_AGC_CNTRL, reg);

		reg = FUNC2(STB0899_S2DEMOD, IF_AGC_CNTRL2);
		FUNC3(IF_AGC_DUMP_PER, reg, 7);
		FUNC14(state, STB0899_S2DEMOD, STB0899_BASE_IF_AGC_CNTRL2, STB0899_OFF0_IF_AGC_CNTRL2, reg);
	}

	/* Release Stream Merger Reset		*/
	reg = FUNC12(state, STB0899_TSTRES);
	FUNC3(FRESRS, reg, 0);
	FUNC13(state, STB0899_TSTRES, reg);

	return internal->status;
}