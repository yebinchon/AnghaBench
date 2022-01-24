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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  guard_interval; void* code_rate_LP; void* code_rate_HP; int /*<<< orphan*/  hierarchy_information; int /*<<< orphan*/  constellation; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int /*<<< orphan*/  BANDWIDTH_6_MHZ ; 
 int /*<<< orphan*/  BANDWIDTH_7_MHZ ; 
 int /*<<< orphan*/  BANDWIDTH_8_MHZ ; 
 void* FEC_1_2 ; 
 void* FEC_2_3 ; 
 void* FEC_3_4 ; 
 void* FEC_5_6 ; 
 void* FEC_7_8 ; 
 int /*<<< orphan*/  GUARD_INTERVAL_1_16 ; 
 int /*<<< orphan*/  GUARD_INTERVAL_1_32 ; 
 int /*<<< orphan*/  GUARD_INTERVAL_1_4 ; 
 int /*<<< orphan*/  GUARD_INTERVAL_1_8 ; 
 int /*<<< orphan*/  HIERARCHY_1 ; 
 int /*<<< orphan*/  HIERARCHY_2 ; 
 int /*<<< orphan*/  HIERARCHY_4 ; 
 int /*<<< orphan*/  HIERARCHY_NONE ; 
 int /*<<< orphan*/  QAM_16 ; 
 int /*<<< orphan*/  QAM_64 ; 
 int /*<<< orphan*/  QPSK ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_2K ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_8K ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  reg_bw_len ; 
 int /*<<< orphan*/  reg_bw_pos ; 
 int /*<<< orphan*/  reg_dec_pri_len ; 
 int /*<<< orphan*/  reg_dec_pri_pos ; 
 int /*<<< orphan*/  reg_tpsd_const_len ; 
 int /*<<< orphan*/  reg_tpsd_const_pos ; 
 int /*<<< orphan*/  reg_tpsd_gi_len ; 
 int /*<<< orphan*/  reg_tpsd_gi_pos ; 
 int /*<<< orphan*/  reg_tpsd_hier_len ; 
 int /*<<< orphan*/  reg_tpsd_hier_pos ; 
 int /*<<< orphan*/  reg_tpsd_hpcr_len ; 
 int /*<<< orphan*/  reg_tpsd_hpcr_pos ; 
 int /*<<< orphan*/  reg_tpsd_lpcr_len ; 
 int /*<<< orphan*/  reg_tpsd_lpcr_pos ; 
 int /*<<< orphan*/  reg_tpsd_txmod_len ; 
 int /*<<< orphan*/  reg_tpsd_txmod_pos ; 
 int /*<<< orphan*/  xd_g_reg_bw ; 
 int /*<<< orphan*/  xd_g_reg_dec_pri ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_const ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_gi ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_hier ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_hpcr ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_lpcr ; 
 int /*<<< orphan*/  xd_g_reg_tpsd_txmod ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				  struct dvb_frontend_parameters *fep)
{
	struct af9005_fe_state *state = fe->demodulator_priv;
	int ret;
	u8 temp;

	/* mode */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_const,
				      reg_tpsd_const_pos, reg_tpsd_const_len,
				      &temp);
	if (ret)
		return ret;
	FUNC1("===== fe_get_frontend ==============\n");
	FUNC1("CONSTELLATION ");
	switch (temp) {
	case 0:
		fep->u.ofdm.constellation = QPSK;
		FUNC1("QPSK\n");
		break;
	case 1:
		fep->u.ofdm.constellation = QAM_16;
		FUNC1("QAM_16\n");
		break;
	case 2:
		fep->u.ofdm.constellation = QAM_64;
		FUNC1("QAM_64\n");
		break;
	}

	/* tps hierarchy and alpha value */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_hier,
				      reg_tpsd_hier_pos, reg_tpsd_hier_len,
				      &temp);
	if (ret)
		return ret;
	FUNC1("HIERARCHY ");
	switch (temp) {
	case 0:
		fep->u.ofdm.hierarchy_information = HIERARCHY_NONE;
		FUNC1("NONE\n");
		break;
	case 1:
		fep->u.ofdm.hierarchy_information = HIERARCHY_1;
		FUNC1("1\n");
		break;
	case 2:
		fep->u.ofdm.hierarchy_information = HIERARCHY_2;
		FUNC1("2\n");
		break;
	case 3:
		fep->u.ofdm.hierarchy_information = HIERARCHY_4;
		FUNC1("4\n");
		break;
	}

	/*  high/low priority     */
	ret =
	    FUNC0(state->d, xd_g_reg_dec_pri,
				      reg_dec_pri_pos, reg_dec_pri_len, &temp);
	if (ret)
		return ret;
	/* if temp is set = high priority */
	FUNC1("PRIORITY %s\n", temp ? "high" : "low");

	/* high coderate */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_hpcr,
				      reg_tpsd_hpcr_pos, reg_tpsd_hpcr_len,
				      &temp);
	if (ret)
		return ret;
	FUNC1("CODERATE HP ");
	switch (temp) {
	case 0:
		fep->u.ofdm.code_rate_HP = FEC_1_2;
		FUNC1("FEC_1_2\n");
		break;
	case 1:
		fep->u.ofdm.code_rate_HP = FEC_2_3;
		FUNC1("FEC_2_3\n");
		break;
	case 2:
		fep->u.ofdm.code_rate_HP = FEC_3_4;
		FUNC1("FEC_3_4\n");
		break;
	case 3:
		fep->u.ofdm.code_rate_HP = FEC_5_6;
		FUNC1("FEC_5_6\n");
		break;
	case 4:
		fep->u.ofdm.code_rate_HP = FEC_7_8;
		FUNC1("FEC_7_8\n");
		break;
	}

	/* low coderate */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_lpcr,
				      reg_tpsd_lpcr_pos, reg_tpsd_lpcr_len,
				      &temp);
	if (ret)
		return ret;
	FUNC1("CODERATE LP ");
	switch (temp) {
	case 0:
		fep->u.ofdm.code_rate_LP = FEC_1_2;
		FUNC1("FEC_1_2\n");
		break;
	case 1:
		fep->u.ofdm.code_rate_LP = FEC_2_3;
		FUNC1("FEC_2_3\n");
		break;
	case 2:
		fep->u.ofdm.code_rate_LP = FEC_3_4;
		FUNC1("FEC_3_4\n");
		break;
	case 3:
		fep->u.ofdm.code_rate_LP = FEC_5_6;
		FUNC1("FEC_5_6\n");
		break;
	case 4:
		fep->u.ofdm.code_rate_LP = FEC_7_8;
		FUNC1("FEC_7_8\n");
		break;
	}

	/* guard interval */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_gi,
				      reg_tpsd_gi_pos, reg_tpsd_gi_len, &temp);
	if (ret)
		return ret;
	FUNC1("GUARD INTERVAL ");
	switch (temp) {
	case 0:
		fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_32;
		FUNC1("1_32\n");
		break;
	case 1:
		fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_16;
		FUNC1("1_16\n");
		break;
	case 2:
		fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_8;
		FUNC1("1_8\n");
		break;
	case 3:
		fep->u.ofdm.guard_interval = GUARD_INTERVAL_1_4;
		FUNC1("1_4\n");
		break;
	}

	/* fft */
	ret =
	    FUNC0(state->d, xd_g_reg_tpsd_txmod,
				      reg_tpsd_txmod_pos, reg_tpsd_txmod_len,
				      &temp);
	if (ret)
		return ret;
	FUNC1("TRANSMISSION MODE ");
	switch (temp) {
	case 0:
		fep->u.ofdm.transmission_mode = TRANSMISSION_MODE_2K;
		FUNC1("2K\n");
		break;
	case 1:
		fep->u.ofdm.transmission_mode = TRANSMISSION_MODE_8K;
		FUNC1("8K\n");
		break;
	}

	/* bandwidth      */
	ret =
	    FUNC0(state->d, xd_g_reg_bw, reg_bw_pos,
				      reg_bw_len, &temp);
	FUNC1("BANDWIDTH ");
	switch (temp) {
	case 0:
		fep->u.ofdm.bandwidth = BANDWIDTH_6_MHZ;
		FUNC1("6\n");
		break;
	case 1:
		fep->u.ofdm.bandwidth = BANDWIDTH_7_MHZ;
		FUNC1("7\n");
		break;
	case 2:
		fep->u.ofdm.bandwidth = BANDWIDTH_8_MHZ;
		FUNC1("8\n");
		break;
	}
	return 0;
}