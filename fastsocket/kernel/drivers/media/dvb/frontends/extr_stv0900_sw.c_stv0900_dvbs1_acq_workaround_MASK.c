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
struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {scalar_t__* srch_algo; TYPE_1__* result; int /*<<< orphan*/  mclk; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef  int s32 ;
typedef  enum fe_stv0900_signal_type { ____Placeholder_fe_stv0900_signal_type } fe_stv0900_signal_type ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;
struct TYPE_2__ {void* locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFR1 ; 
 int /*<<< orphan*/  CFR2 ; 
 int /*<<< orphan*/  CFRINIT0 ; 
 int /*<<< orphan*/  CFRINIT1 ; 
 int /*<<< orphan*/  CFR_AUTOSCAN ; 
 int /*<<< orphan*/  DMDISTATE ; 
 void* FALSE ; 
 int /*<<< orphan*/  HEADER_MODE ; 
 int /*<<< orphan*/  SPECINV_CONTROL ; 
 scalar_t__ STV0900_BLIND_SEARCH ; 
 scalar_t__ STV0900_DVBS_FOUND ; 
 int /*<<< orphan*/  STV0900_IQ_FORCE_NORMAL ; 
 int /*<<< orphan*/  STV0900_IQ_FORCE_SWAPPED ; 
 int STV0900_NODATA ; 
 int /*<<< orphan*/  STV0900_WARM_START ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct stv0900_internal*,int,int) ; 
 int FUNC5 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stv0900_internal*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*) ; 
 scalar_t__ FUNC8 (struct stv0900_internal*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct stv0900_internal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum
fe_stv0900_signal_type FUNC11(struct dvb_frontend *fe)
{
	struct stv0900_state *state = fe->demodulator_priv;
	struct stv0900_internal *intp = state->internal;
	enum fe_stv0900_demod_num demod = state->demod;
	enum fe_stv0900_signal_type signal_type = STV0900_NODATA;

	s32	srate,
		demod_timeout,
		fec_timeout,
		freq1,
		freq0;

	intp->result[demod].locked = FALSE;

	if (FUNC0(intp, HEADER_MODE) == STV0900_DVBS_FOUND) {
		srate = FUNC3(intp, intp->mclk, demod);
		srate += FUNC4(intp, srate, demod);
		if (intp->srch_algo[demod] == STV0900_BLIND_SEARCH)
			FUNC6(intp, intp->mclk, srate, demod);

		FUNC1(&demod_timeout, &fec_timeout,
					srate, STV0900_WARM_START);
		freq1 = FUNC5(intp, CFR2);
		freq0 = FUNC5(intp, CFR1);
		FUNC9(intp, CFR_AUTOSCAN, 0);
		FUNC9(intp, SPECINV_CONTROL,
					STV0900_IQ_FORCE_SWAPPED);
		FUNC10(intp, DMDISTATE, 0x1c);
		FUNC10(intp, CFRINIT1, freq1);
		FUNC10(intp, CFRINIT0, freq0);
		FUNC10(intp, DMDISTATE, 0x18);
		if (FUNC8(intp, demod,
				demod_timeout, fec_timeout) == TRUE) {
			intp->result[demod].locked = TRUE;
			signal_type = FUNC2(fe);
			FUNC7(fe);
		} else {
			FUNC9(intp, SPECINV_CONTROL,
					STV0900_IQ_FORCE_NORMAL);
			FUNC10(intp, DMDISTATE, 0x1c);
			FUNC10(intp, CFRINIT1, freq1);
			FUNC10(intp, CFRINIT0, freq0);
			FUNC10(intp, DMDISTATE, 0x18);
			if (FUNC8(intp, demod,
					demod_timeout, fec_timeout) == TRUE) {
				intp->result[demod].locked = TRUE;
				signal_type = FUNC2(fe);
				FUNC7(fe);
			}

		}

	} else
		intp->result[demod].locked = FALSE;

	return signal_type;
}