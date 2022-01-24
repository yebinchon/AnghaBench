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
typedef  int u32 ;
struct stv090x_state {int search_mode; int /*<<< orphan*/  demod_mode; TYPE_1__* internal; } ;
struct TYPE_2__ {int dev_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLC ; 
 int /*<<< orphan*/  BCLC ; 
 int /*<<< orphan*/  CAR2CFG ; 
 int /*<<< orphan*/  DMDCFGMD ; 
 int /*<<< orphan*/  DVBS1_ENABLE_FIELD ; 
 int /*<<< orphan*/  DVBS2_ENABLE_FIELD ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
#define  STV090x_SEARCH_AUTO 131 
#define  STV090x_SEARCH_DSS 130 
#define  STV090x_SEARCH_DVBS1 129 
#define  STV090x_SEARCH_DVBS2 128 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV090x_SINGLE ; 
 int /*<<< orphan*/  FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct stv090x_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct stv090x_state*,int) ; 

__attribute__((used)) static int FUNC11(struct stv090x_state *state)
{
	u32 reg;

	switch (state->search_mode) {
	case STV090x_SEARCH_DVBS1:
	case STV090x_SEARCH_DSS:
		reg = FUNC0(state, DMDCFGMD);
		FUNC1(reg, DVBS1_ENABLE_FIELD, 1);
		FUNC1(reg, DVBS2_ENABLE_FIELD, 0);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;

		/* Activate Viterbi decoder in legacy search,
		 * do not use FRESVIT1, might impact VITERBI2
		 */
		if (FUNC10(state, 0) < 0)
			goto err;

		if (FUNC6(state) < 0)
			goto err;

		if (FUNC2(state, CAR2CFG, 0x22) < 0) /* disable DVB-S2 */
			goto err;

		if (FUNC7(state) < 0)
			goto err;
		if (FUNC9(state) < 0)
			goto err;
		break;

	case STV090x_SEARCH_DVBS2:
		reg = FUNC0(state, DMDCFGMD);
		FUNC1(reg, DVBS1_ENABLE_FIELD, 0);
		FUNC1(reg, DVBS2_ENABLE_FIELD, 0);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;
		FUNC1(reg, DVBS1_ENABLE_FIELD, 1);
		FUNC1(reg, DVBS2_ENABLE_FIELD, 1);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;

		if (FUNC10(state, 1) < 0)
			goto err;

		if (FUNC2(state, ACLC, 0x1a) < 0) /* stop DVB-S CR loop */
			goto err;
		if (FUNC2(state, BCLC, 0x09) < 0)
			goto err;

		if (state->internal->dev_ver <= 0x20) {
			/* enable S2 carrier loop */
			if (FUNC2(state, CAR2CFG, 0x26) < 0)
				goto err;
		} else {
			/* > Cut 3: Stop carrier 3 */
			if (FUNC2(state, CAR2CFG, 0x66) < 0)
				goto err;
		}

		if (state->demod_mode != STV090x_SINGLE) {
			/* Cut 2: enable link during search */
			if (FUNC4(state) < 0)
				goto err;
		} else {
			/* Single demodulator
			 * Authorize SHORT and LONG frames,
			 * QPSK, 8PSK, 16APSK and 32APSK
			 */
			if (FUNC5(state) < 0)
				goto err;
		}

		if (FUNC8(state) < 0)
			goto err;
		break;

	case STV090x_SEARCH_AUTO:
	default:
		/* enable DVB-S2 and DVB-S2 in Auto MODE */
		reg = FUNC0(state, DMDCFGMD);
		FUNC1(reg, DVBS1_ENABLE_FIELD, 0);
		FUNC1(reg, DVBS2_ENABLE_FIELD, 0);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;
		FUNC1(reg, DVBS1_ENABLE_FIELD, 1);
		FUNC1(reg, DVBS2_ENABLE_FIELD, 1);
		if (FUNC2(state, DMDCFGMD, reg) < 0)
			goto err;

		if (FUNC10(state, 0) < 0)
			goto err;

		if (FUNC6(state) < 0)
			goto err;

		if (state->internal->dev_ver <= 0x20) {
			/* enable S2 carrier loop */
			if (FUNC2(state, CAR2CFG, 0x26) < 0)
				goto err;
		} else {
			/* > Cut 3: Stop carrier 3 */
			if (FUNC2(state, CAR2CFG, 0x66) < 0)
				goto err;
		}

		if (state->demod_mode != STV090x_SINGLE) {
			/* Cut 2: enable link during search */
			if (FUNC4(state) < 0)
				goto err;
		} else {
			/* Single demodulator
			 * Authorize SHORT and LONG frames,
			 * QPSK, 8PSK, 16APSK and 32APSK
			 */
			if (FUNC5(state) < 0)
				goto err;
		}

		if (FUNC7(state) < 0)
			goto err;

		if (FUNC9(state) < 0)
			goto err;
		break;
	}
	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}