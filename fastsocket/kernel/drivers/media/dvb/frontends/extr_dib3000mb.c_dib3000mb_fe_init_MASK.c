#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB3000MB_BERLEN_DEFAULT ; 
 int /*<<< orphan*/  DIB3000MB_CLOCK_DEFAULT ; 
 int /*<<< orphan*/  DIB3000MB_DATA_DIVERSITY_IN_OFF ; 
 int /*<<< orphan*/  DIB3000MB_DDS_FREQ_LSB ; 
 int /*<<< orphan*/  DIB3000MB_DDS_FREQ_MSB ; 
 int /*<<< orphan*/  DIB3000MB_ELECT_OUT_MODE_ON ; 
 int /*<<< orphan*/  DIB3000MB_FIFO_142 ; 
 int /*<<< orphan*/  DIB3000MB_FIFO_146 ; 
 int /*<<< orphan*/  DIB3000MB_FIFO_147 ; 
 int /*<<< orphan*/  DIB3000MB_FIFO_INHIBIT ; 
 size_t DIB3000MB_IMPNOISE_OFF ; 
 int /*<<< orphan*/  DIB3000MB_ISI_INHIBIT ; 
 int /*<<< orphan*/  DIB3000MB_LOCK0_DEFAULT ; 
 int /*<<< orphan*/  DIB3000MB_LOCK1_SEARCH_4 ; 
 int /*<<< orphan*/  DIB3000MB_LOCK2_DEFAULT ; 
 int /*<<< orphan*/  DIB3000MB_MOBILE_ALGO_ON ; 
 int /*<<< orphan*/  DIB3000MB_MOBILE_MODE_QAM_OFF ; 
 int /*<<< orphan*/  DIB3000MB_MPEG2_OUT_MODE_188 ; 
 int /*<<< orphan*/  DIB3000MB_MULTI_DEMOD_LSB ; 
 int /*<<< orphan*/  DIB3000MB_MULTI_DEMOD_MSB ; 
 int /*<<< orphan*/  DIB3000MB_OUTPUT_MODE_SLAVE ; 
 int /*<<< orphan*/  DIB3000MB_PHASE_NOISE_DEFAULT ; 
 int /*<<< orphan*/  DIB3000MB_PID_PARSE_ACTIVATE ; 
 int /*<<< orphan*/  DIB3000MB_POWER_UP ; 
 int /*<<< orphan*/  DIB3000MB_REG_BERLEN ; 
 int /*<<< orphan*/  DIB3000MB_REG_CLOCK ; 
 int /*<<< orphan*/  DIB3000MB_REG_DATA_IN_DIVERSITY ; 
 int /*<<< orphan*/  DIB3000MB_REG_DDS_FREQ_LSB ; 
 int /*<<< orphan*/  DIB3000MB_REG_DDS_FREQ_MSB ; 
 int /*<<< orphan*/  DIB3000MB_REG_ELECT_OUT_MODE ; 
 int /*<<< orphan*/  DIB3000MB_REG_FIFO ; 
 int /*<<< orphan*/  DIB3000MB_REG_FIFO_142 ; 
 int /*<<< orphan*/  DIB3000MB_REG_FIFO_146 ; 
 int /*<<< orphan*/  DIB3000MB_REG_FIFO_147 ; 
 int /*<<< orphan*/  DIB3000MB_REG_ISI ; 
 int /*<<< orphan*/  DIB3000MB_REG_LOCK0_MASK ; 
 int /*<<< orphan*/  DIB3000MB_REG_LOCK1_MASK ; 
 int /*<<< orphan*/  DIB3000MB_REG_LOCK2_MASK ; 
 int /*<<< orphan*/  DIB3000MB_REG_MOBILE_ALGO ; 
 int /*<<< orphan*/  DIB3000MB_REG_MOBILE_MODE_QAM ; 
 int /*<<< orphan*/  DIB3000MB_REG_MPEG2_OUT_MODE ; 
 int /*<<< orphan*/  DIB3000MB_REG_MULTI_DEMOD_LSB ; 
 int /*<<< orphan*/  DIB3000MB_REG_MULTI_DEMOD_MSB ; 
 int /*<<< orphan*/  DIB3000MB_REG_OUTPUT_MODE ; 
 int /*<<< orphan*/  DIB3000MB_REG_PHASE_NOISE ; 
 int /*<<< orphan*/  DIB3000MB_REG_PID_PARSE ; 
 int /*<<< orphan*/  DIB3000MB_REG_POWER_CONTROL ; 
 int /*<<< orphan*/  DIB3000MB_REG_RESET_DEVICE ; 
 int /*<<< orphan*/  DIB3000MB_REG_RESTART ; 
 int /*<<< orphan*/  DIB3000MB_REG_SEQ ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_106 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_107 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_108 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_122 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_68 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_69 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_71 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_77 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_78 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_92 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_96 ; 
 int /*<<< orphan*/  DIB3000MB_REG_UNK_97 ; 
 int /*<<< orphan*/  DIB3000MB_RESET_DEVICE ; 
 int /*<<< orphan*/  DIB3000MB_RESET_DEVICE_RST ; 
 int /*<<< orphan*/  DIB3000MB_RESTART_AGC ; 
 int /*<<< orphan*/  DIB3000MB_UNK_106 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_107 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_108 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_122 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_68 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_69 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_71 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_77 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_78 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_92 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_96 ; 
 int /*<<< orphan*/  DIB3000MB_UNK_97 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ *** dib3000_seq ; 
 int /*<<< orphan*/  dib3000mb_agc_bandwidth_low ; 
 int /*<<< orphan*/  dib3000mb_bandwidth_8mhz ; 
 int /*<<< orphan*/  dib3000mb_default_agc_gain ; 
 int /*<<< orphan*/  dib3000mb_default_lock_duration ; 
 int /*<<< orphan*/  dib3000mb_default_noise_phase ; 
 int /*<<< orphan*/  dib3000mb_filter_coeffs ; 
 int /*<<< orphan*/ * dib3000mb_impulse_noise_values ; 
 int /*<<< orphan*/  dib3000mb_reg_agc_bandwidth ; 
 int /*<<< orphan*/  dib3000mb_reg_agc_gain ; 
 int /*<<< orphan*/  dib3000mb_reg_bandwidth ; 
 int /*<<< orphan*/  dib3000mb_reg_filter_coeffs ; 
 int /*<<< orphan*/  dib3000mb_reg_impulse_noise ; 
 int /*<<< orphan*/  dib3000mb_reg_lock_duration ; 
 int /*<<< orphan*/  dib3000mb_reg_phase_noise ; 
 int /*<<< orphan*/  dib3000mb_reg_timing_freq ; 
 int /*<<< orphan*/ * dib3000mb_timing_freq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend* fe, int mobile_mode)
{
	struct dib3000_state* state = fe->demodulator_priv;

	FUNC0("dib3000mb is getting up.\n");
	FUNC1(DIB3000MB_REG_POWER_CONTROL, DIB3000MB_POWER_UP);

	FUNC1(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AGC);

	FUNC1(DIB3000MB_REG_RESET_DEVICE, DIB3000MB_RESET_DEVICE);
	FUNC1(DIB3000MB_REG_RESET_DEVICE, DIB3000MB_RESET_DEVICE_RST);

	FUNC1(DIB3000MB_REG_CLOCK, DIB3000MB_CLOCK_DEFAULT);

	FUNC1(DIB3000MB_REG_ELECT_OUT_MODE, DIB3000MB_ELECT_OUT_MODE_ON);

	FUNC1(DIB3000MB_REG_DDS_FREQ_MSB, DIB3000MB_DDS_FREQ_MSB);
	FUNC1(DIB3000MB_REG_DDS_FREQ_LSB, DIB3000MB_DDS_FREQ_LSB);

	FUNC2(dib3000mb_reg_timing_freq, dib3000mb_timing_freq[2]);

	FUNC2(dib3000mb_reg_impulse_noise,
			dib3000mb_impulse_noise_values[DIB3000MB_IMPNOISE_OFF]);

	FUNC2(dib3000mb_reg_agc_gain, dib3000mb_default_agc_gain);

	FUNC1(DIB3000MB_REG_PHASE_NOISE, DIB3000MB_PHASE_NOISE_DEFAULT);

	FUNC2(dib3000mb_reg_phase_noise, dib3000mb_default_noise_phase);

	FUNC2(dib3000mb_reg_lock_duration, dib3000mb_default_lock_duration);

	FUNC2(dib3000mb_reg_agc_bandwidth, dib3000mb_agc_bandwidth_low);

	FUNC1(DIB3000MB_REG_LOCK0_MASK, DIB3000MB_LOCK0_DEFAULT);
	FUNC1(DIB3000MB_REG_LOCK1_MASK, DIB3000MB_LOCK1_SEARCH_4);
	FUNC1(DIB3000MB_REG_LOCK2_MASK, DIB3000MB_LOCK2_DEFAULT);
	FUNC1(DIB3000MB_REG_SEQ, dib3000_seq[1][1][1]);

	FUNC2(dib3000mb_reg_bandwidth, dib3000mb_bandwidth_8mhz);

	FUNC1(DIB3000MB_REG_UNK_68, DIB3000MB_UNK_68);
	FUNC1(DIB3000MB_REG_UNK_69, DIB3000MB_UNK_69);
	FUNC1(DIB3000MB_REG_UNK_71, DIB3000MB_UNK_71);
	FUNC1(DIB3000MB_REG_UNK_77, DIB3000MB_UNK_77);
	FUNC1(DIB3000MB_REG_UNK_78, DIB3000MB_UNK_78);
	FUNC1(DIB3000MB_REG_ISI, DIB3000MB_ISI_INHIBIT);
	FUNC1(DIB3000MB_REG_UNK_92, DIB3000MB_UNK_92);
	FUNC1(DIB3000MB_REG_UNK_96, DIB3000MB_UNK_96);
	FUNC1(DIB3000MB_REG_UNK_97, DIB3000MB_UNK_97);
	FUNC1(DIB3000MB_REG_UNK_106, DIB3000MB_UNK_106);
	FUNC1(DIB3000MB_REG_UNK_107, DIB3000MB_UNK_107);
	FUNC1(DIB3000MB_REG_UNK_108, DIB3000MB_UNK_108);
	FUNC1(DIB3000MB_REG_UNK_122, DIB3000MB_UNK_122);
	FUNC1(DIB3000MB_REG_MOBILE_MODE_QAM, DIB3000MB_MOBILE_MODE_QAM_OFF);
	FUNC1(DIB3000MB_REG_BERLEN, DIB3000MB_BERLEN_DEFAULT);

	FUNC2(dib3000mb_reg_filter_coeffs, dib3000mb_filter_coeffs);

	FUNC1(DIB3000MB_REG_MOBILE_ALGO, DIB3000MB_MOBILE_ALGO_ON);
	FUNC1(DIB3000MB_REG_MULTI_DEMOD_MSB, DIB3000MB_MULTI_DEMOD_MSB);
	FUNC1(DIB3000MB_REG_MULTI_DEMOD_LSB, DIB3000MB_MULTI_DEMOD_LSB);

	FUNC1(DIB3000MB_REG_OUTPUT_MODE, DIB3000MB_OUTPUT_MODE_SLAVE);

	FUNC1(DIB3000MB_REG_FIFO_142, DIB3000MB_FIFO_142);
	FUNC1(DIB3000MB_REG_MPEG2_OUT_MODE, DIB3000MB_MPEG2_OUT_MODE_188);
	FUNC1(DIB3000MB_REG_PID_PARSE, DIB3000MB_PID_PARSE_ACTIVATE);
	FUNC1(DIB3000MB_REG_FIFO, DIB3000MB_FIFO_INHIBIT);
	FUNC1(DIB3000MB_REG_FIFO_146, DIB3000MB_FIFO_146);
	FUNC1(DIB3000MB_REG_FIFO_147, DIB3000MB_FIFO_147);

	FUNC1(DIB3000MB_REG_DATA_IN_DIVERSITY, DIB3000MB_DATA_DIVERSITY_IN_OFF);

	return 0;
}