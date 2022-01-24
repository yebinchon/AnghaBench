#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_ofdm_parameters {int bandwidth; int transmission_mode; int guard_interval; int constellation; int hierarchy_information; int code_rate_HP; int code_rate_LP; } ;
struct TYPE_4__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {int inversion; TYPE_1__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;
typedef  int fe_code_rate_t ;

/* Variables and functions */
#define  BANDWIDTH_6_MHZ 158 
#define  BANDWIDTH_7_MHZ 157 
#define  BANDWIDTH_8_MHZ 156 
#define  BANDWIDTH_AUTO 155 
 int DIB3000MB_ISI_ACTIVATE ; 
 int DIB3000MB_ISI_INHIBIT ; 
 int DIB3000MB_LOCK1_SEARCH_4 ; 
 int DIB3000MB_MOBILE_ALGO_OFF ; 
 int DIB3000MB_MOBILE_MODE_OFF ; 
 int DIB3000MB_MOBILE_MODE_QAM_OFF ; 
 int /*<<< orphan*/  DIB3000MB_REG_AS_IRQ_PENDING ; 
 int /*<<< orphan*/  DIB3000MB_REG_DDS_INV ; 
 int /*<<< orphan*/  DIB3000MB_REG_FFT ; 
 int /*<<< orphan*/  DIB3000MB_REG_GUARD_TIME ; 
 int /*<<< orphan*/  DIB3000MB_REG_ISI ; 
 int /*<<< orphan*/  DIB3000MB_REG_LOCK1_MASK ; 
 int /*<<< orphan*/  DIB3000MB_REG_LOCK2_VALUE ; 
 int /*<<< orphan*/  DIB3000MB_REG_MOBILE_ALGO ; 
 int /*<<< orphan*/  DIB3000MB_REG_MOBILE_MODE ; 
 int /*<<< orphan*/  DIB3000MB_REG_MOBILE_MODE_QAM ; 
 int /*<<< orphan*/  DIB3000MB_REG_QAM ; 
 int /*<<< orphan*/  DIB3000MB_REG_RESTART ; 
 int /*<<< orphan*/  DIB3000MB_REG_SEQ ; 
 int /*<<< orphan*/  DIB3000MB_REG_SYNC_IMPROVEMENT ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_121 ; 
 int /*<<< orphan*/  DIB3000MB_REG_VIT_ALPHA ; 
 int /*<<< orphan*/  DIB3000MB_REG_VIT_CODE_RATE ; 
 int /*<<< orphan*/  DIB3000MB_REG_VIT_HP ; 
 int /*<<< orphan*/  DIB3000MB_REG_VIT_HRCH ; 
 int DIB3000MB_RESTART_AGC ; 
 int DIB3000MB_RESTART_AUTO_SEARCH ; 
 int DIB3000MB_RESTART_CTRL ; 
 int DIB3000MB_RESTART_OFF ; 
 int DIB3000MB_SYNC_IMPROVE_2K_1_8 ; 
 int DIB3000MB_SYNC_IMPROVE_DEFAULT ; 
 int DIB3000MB_UNK_121_2K ; 
 int DIB3000MB_UNK_121_DEFAULT ; 
 int DIB3000_ALPHA_1 ; 
 int DIB3000_ALPHA_2 ; 
 int DIB3000_ALPHA_4 ; 
 int DIB3000_CONSTELLATION_16QAM ; 
 int DIB3000_CONSTELLATION_64QAM ; 
 int DIB3000_CONSTELLATION_QPSK ; 
 int DIB3000_DDS_INVERSION_OFF ; 
 int DIB3000_DDS_INVERSION_ON ; 
 int DIB3000_FEC_1_2 ; 
 int DIB3000_FEC_2_3 ; 
 int DIB3000_FEC_3_4 ; 
 int DIB3000_FEC_5_6 ; 
 int DIB3000_FEC_7_8 ; 
 int DIB3000_GUARD_TIME_1_16 ; 
 int DIB3000_GUARD_TIME_1_32 ; 
 int DIB3000_GUARD_TIME_1_4 ; 
 int DIB3000_GUARD_TIME_1_8 ; 
 int DIB3000_HRCH_OFF ; 
 int DIB3000_HRCH_ON ; 
 int DIB3000_SELECT_HP ; 
 int DIB3000_SELECT_LP ; 
 int DIB3000_TRANSMISSION_MODE_2K ; 
 int DIB3000_TRANSMISSION_MODE_8K ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  FEC_1_2 154 
#define  FEC_2_3 153 
#define  FEC_3_4 152 
#define  FEC_5_6 151 
#define  FEC_7_8 150 
#define  FEC_AUTO 149 
#define  FEC_NONE 148 
#define  GUARD_INTERVAL_1_16 147 
#define  GUARD_INTERVAL_1_32 146 
#define  GUARD_INTERVAL_1_4 145 
#define  GUARD_INTERVAL_1_8 144 
#define  GUARD_INTERVAL_AUTO 143 
#define  HIERARCHY_1 142 
#define  HIERARCHY_2 141 
#define  HIERARCHY_4 140 
#define  HIERARCHY_AUTO 139 
#define  HIERARCHY_NONE 138 
#define  INVERSION_AUTO 137 
#define  INVERSION_OFF 136 
#define  INVERSION_ON 135 
#define  QAM_16 134 
#define  QAM_64 133 
#define  QAM_AUTO 132 
#define  QPSK 131 
#define  TRANSMISSION_MODE_2K 130 
#define  TRANSMISSION_MODE_8K 129 
#define  TRANSMISSION_MODE_AUTO 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int*** dib3000_seq ; 
 int /*<<< orphan*/  dib3000mb_agc_bandwidth_high ; 
 int /*<<< orphan*/  dib3000mb_agc_bandwidth_low ; 
 int /*<<< orphan*/  dib3000mb_bandwidth_6mhz ; 
 int /*<<< orphan*/  dib3000mb_bandwidth_7mhz ; 
 int /*<<< orphan*/  dib3000mb_bandwidth_8mhz ; 
 scalar_t__ FUNC2 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  dib3000mb_reg_agc_bandwidth ; 
 int /*<<< orphan*/  dib3000mb_reg_bandwidth ; 
 int /*<<< orphan*/  dib3000mb_reg_timing_freq ; 
 int /*<<< orphan*/ * dib3000mb_timing_freq ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend* fe,
				  struct dvb_frontend_parameters *fep, int tuner)
{
	struct dib3000_state* state = fe->demodulator_priv;
	struct dvb_ofdm_parameters *ofdm = &fep->u.ofdm;
	fe_code_rate_t fe_cr = FEC_NONE;
	int search_state, seq;

	if (tuner && fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe, fep);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);

		FUNC0("bandwidth: ");
		switch (ofdm->bandwidth) {
			case BANDWIDTH_8_MHZ:
				FUNC0("8 MHz\n");
				FUNC9(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[2]);
				FUNC9(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_8mhz);
				break;
			case BANDWIDTH_7_MHZ:
				FUNC0("7 MHz\n");
				FUNC9(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[1]);
				FUNC9(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_7mhz);
				break;
			case BANDWIDTH_6_MHZ:
				FUNC0("6 MHz\n");
				FUNC9(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[0]);
				FUNC9(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_6mhz);
				break;
			case BANDWIDTH_AUTO:
				return -EOPNOTSUPP;
			default:
				FUNC3("unknown bandwidth value.");
				return -EINVAL;
		}
	}
	FUNC8(DIB3000MB_REG_LOCK1_MASK, DIB3000MB_LOCK1_SEARCH_4);

	FUNC0("transmission mode: ");
	switch (ofdm->transmission_mode) {
		case TRANSMISSION_MODE_2K:
			FUNC0("2k\n");
			FUNC8(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_2K);
			break;
		case TRANSMISSION_MODE_8K:
			FUNC0("8k\n");
			FUNC8(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_8K);
			break;
		case TRANSMISSION_MODE_AUTO:
			FUNC0("auto\n");
			break;
		default:
			return -EINVAL;
	}

	FUNC0("guard: ");
	switch (ofdm->guard_interval) {
		case GUARD_INTERVAL_1_32:
			FUNC0("1_32\n");
			FUNC8(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_32);
			break;
		case GUARD_INTERVAL_1_16:
			FUNC0("1_16\n");
			FUNC8(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_16);
			break;
		case GUARD_INTERVAL_1_8:
			FUNC0("1_8\n");
			FUNC8(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_8);
			break;
		case GUARD_INTERVAL_1_4:
			FUNC0("1_4\n");
			FUNC8(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_4);
			break;
		case GUARD_INTERVAL_AUTO:
			FUNC0("auto\n");
			break;
		default:
			return -EINVAL;
	}

	FUNC0("inversion: ");
	switch (fep->inversion) {
		case INVERSION_OFF:
			FUNC0("off\n");
			FUNC8(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_OFF);
			break;
		case INVERSION_AUTO:
			FUNC0("auto ");
			break;
		case INVERSION_ON:
			FUNC0("on\n");
			FUNC8(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_ON);
			break;
		default:
			return -EINVAL;
	}

	FUNC0("constellation: ");
	switch (ofdm->constellation) {
		case QPSK:
			FUNC0("qpsk\n");
			FUNC8(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_QPSK);
			break;
		case QAM_16:
			FUNC0("qam16\n");
			FUNC8(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_16QAM);
			break;
		case QAM_64:
			FUNC0("qam64\n");
			FUNC8(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_64QAM);
			break;
		case QAM_AUTO:
			break;
		default:
			return -EINVAL;
	}
	FUNC0("hierarchy: ");
	switch (ofdm->hierarchy_information) {
		case HIERARCHY_NONE:
			FUNC0("none ");
			/* fall through */
		case HIERARCHY_1:
			FUNC0("alpha=1\n");
			FUNC8(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_1);
			break;
		case HIERARCHY_2:
			FUNC0("alpha=2\n");
			FUNC8(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_2);
			break;
		case HIERARCHY_4:
			FUNC0("alpha=4\n");
			FUNC8(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_4);
			break;
		case HIERARCHY_AUTO:
			FUNC0("alpha=auto\n");
			break;
		default:
			return -EINVAL;
	}

	FUNC0("hierarchy: ");
	if (ofdm->hierarchy_information == HIERARCHY_NONE) {
		FUNC0("none\n");
		FUNC8(DIB3000MB_REG_VIT_HRCH, DIB3000_HRCH_OFF);
		FUNC8(DIB3000MB_REG_VIT_HP, DIB3000_SELECT_HP);
		fe_cr = ofdm->code_rate_HP;
	} else if (ofdm->hierarchy_information != HIERARCHY_AUTO) {
		FUNC0("on\n");
		FUNC8(DIB3000MB_REG_VIT_HRCH, DIB3000_HRCH_ON);
		FUNC8(DIB3000MB_REG_VIT_HP, DIB3000_SELECT_LP);
		fe_cr = ofdm->code_rate_LP;
	}
	FUNC0("fec: ");
	switch (fe_cr) {
		case FEC_1_2:
			FUNC0("1_2\n");
			FUNC8(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_1_2);
			break;
		case FEC_2_3:
			FUNC0("2_3\n");
			FUNC8(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_2_3);
			break;
		case FEC_3_4:
			FUNC0("3_4\n");
			FUNC8(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_3_4);
			break;
		case FEC_5_6:
			FUNC0("5_6\n");
			FUNC8(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_5_6);
			break;
		case FEC_7_8:
			FUNC0("7_8\n");
			FUNC8(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_7_8);
			break;
		case FEC_NONE:
			FUNC0("none ");
			break;
		case FEC_AUTO:
			FUNC0("auto\n");
			break;
		default:
			return -EINVAL;
	}

	seq = dib3000_seq
		[ofdm->transmission_mode == TRANSMISSION_MODE_AUTO]
		[ofdm->guard_interval == GUARD_INTERVAL_AUTO]
		[fep->inversion == INVERSION_AUTO];

	FUNC0("seq? %d\n", seq);

	FUNC8(DIB3000MB_REG_SEQ, seq);

	FUNC8(DIB3000MB_REG_ISI, seq ? DIB3000MB_ISI_INHIBIT : DIB3000MB_ISI_ACTIVATE);

	if (ofdm->transmission_mode == TRANSMISSION_MODE_2K) {
		if (ofdm->guard_interval == GUARD_INTERVAL_1_8) {
			FUNC8(DIB3000MB_REG_SYNC_IMPROVEMENT, DIB3000MB_SYNC_IMPROVE_2K_1_8);
		} else {
			FUNC8(DIB3000MB_REG_SYNC_IMPROVEMENT, DIB3000MB_SYNC_IMPROVE_DEFAULT);
		}

		FUNC8(DIB3000MB_REG_UNK_121, DIB3000MB_UNK_121_2K);
	} else {
		FUNC8(DIB3000MB_REG_UNK_121, DIB3000MB_UNK_121_DEFAULT);
	}

	FUNC8(DIB3000MB_REG_MOBILE_ALGO, DIB3000MB_MOBILE_ALGO_OFF);
	FUNC8(DIB3000MB_REG_MOBILE_MODE_QAM, DIB3000MB_MOBILE_MODE_QAM_OFF);
	FUNC8(DIB3000MB_REG_MOBILE_MODE, DIB3000MB_MOBILE_MODE_OFF);

	FUNC9(dib3000mb_reg_agc_bandwidth, dib3000mb_agc_bandwidth_high);

	FUNC8(DIB3000MB_REG_ISI, DIB3000MB_ISI_ACTIVATE);

	FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AGC + DIB3000MB_RESTART_CTRL);
	FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);

	/* wait for AGC lock */
	FUNC4(70);

	FUNC9(dib3000mb_reg_agc_bandwidth, dib3000mb_agc_bandwidth_low);

	/* something has to be auto searched */
	if (ofdm->constellation == QAM_AUTO ||
		ofdm->hierarchy_information == HIERARCHY_AUTO ||
		fe_cr == FEC_AUTO ||
		fep->inversion == INVERSION_AUTO) {
		int as_count=0;

		FUNC0("autosearch enabled.\n");

		FUNC8(DIB3000MB_REG_ISI, DIB3000MB_ISI_INHIBIT);

		FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AUTO_SEARCH);
		FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);

		while ((search_state =
				FUNC1(
					FUNC5(DIB3000MB_REG_AS_IRQ_PENDING),
					FUNC5(DIB3000MB_REG_LOCK2_VALUE))) < 0 && as_count++ < 100)
			FUNC4(1);

		FUNC0("search_state after autosearch %d after %d checks\n",search_state,as_count);

		if (search_state == 1) {
			struct dvb_frontend_parameters feps;
			if (FUNC2(fe, &feps) == 0) {
				FUNC0("reading tuning data from frontend succeeded.\n");
				return FUNC10(fe, &feps, 0);
			}
		}

	} else {
		FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_CTRL);
		FUNC8(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_OFF);
	}

	return 0;
}