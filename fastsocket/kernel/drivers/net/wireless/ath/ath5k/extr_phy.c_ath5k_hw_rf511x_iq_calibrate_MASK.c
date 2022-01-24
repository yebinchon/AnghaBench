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
typedef  int u32 ;
struct ath5k_hw {scalar_t__ ah_version; int /*<<< orphan*/  ah_iq_cal_needed; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ AR5K_AR5211 ; 
 int /*<<< orphan*/  AR5K_PHY_IQ ; 
 int /*<<< orphan*/  AR5K_PHY_IQRES_CAL_CORR ; 
 int /*<<< orphan*/  AR5K_PHY_IQRES_CAL_PWR_I ; 
 int /*<<< orphan*/  AR5K_PHY_IQRES_CAL_PWR_Q ; 
 int /*<<< orphan*/  AR5K_PHY_IQ_CAL_NUM_LOG_MAX ; 
 int AR5K_PHY_IQ_CORR_ENABLE ; 
 int /*<<< orphan*/  AR5K_PHY_IQ_CORR_Q_I_COFF ; 
 int /*<<< orphan*/  AR5K_PHY_IQ_CORR_Q_Q_COFF ; 
 int AR5K_PHY_IQ_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_CALIBRATE ; 
 int EBUSY ; 
 int ECANCELED ; 
 int EINVAL ; 
 int FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct ath5k_hw *ah)
{
	u32 i_pwr, q_pwr;
	s32 iq_corr, i_coff, i_coffd, q_coff, q_coffd;
	int i;

	/* Skip if I/Q calibration is not needed or if it's still running */
	if (!ah->ah_iq_cal_needed)
		return -EINVAL;
	else if (FUNC3(ah, AR5K_PHY_IQ) & AR5K_PHY_IQ_RUN) {
		FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
				"I/Q calibration still running");
		return -EBUSY;
	}

	/* Calibration has finished, get the results and re-run */

	/* Work around for empty results which can apparently happen on 5212:
	 * Read registers up to 10 times until we get both i_pr and q_pwr */
	for (i = 0; i <= 10; i++) {
		iq_corr = FUNC3(ah, AR5K_PHY_IQRES_CAL_CORR);
		i_pwr = FUNC3(ah, AR5K_PHY_IQRES_CAL_PWR_I);
		q_pwr = FUNC3(ah, AR5K_PHY_IQRES_CAL_PWR_Q);
		FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
			"iq_corr:%x i_pwr:%x q_pwr:%x", iq_corr, i_pwr, q_pwr);
		if (i_pwr && q_pwr)
			break;
	}

	i_coffd = ((i_pwr >> 1) + (q_pwr >> 1)) >> 7;

	if (ah->ah_version == AR5K_AR5211)
		q_coffd = q_pwr >> 6;
	else
		q_coffd = q_pwr >> 7;

	/* In case i_coffd became zero, cancel calibration
	 * not only it's too small, it'll also result a divide
	 * by zero later on. */
	if (i_coffd == 0 || q_coffd < 2)
		return -ECANCELED;

	/* Protect against loss of sign bits */

	i_coff = (-iq_corr) / i_coffd;
	i_coff = FUNC4(i_coff, -32, 31); /* signed 6 bit */

	if (ah->ah_version == AR5K_AR5211)
		q_coff = (i_pwr / q_coffd) - 64;
	else
		q_coff = (i_pwr / q_coffd) - 128;
	q_coff = FUNC4(q_coff, -16, 15); /* signed 5 bit */

	FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
			"new I:%d Q:%d (i_coffd:%x q_coffd:%x)",
			i_coff, q_coff, i_coffd, q_coffd);

	/* Commit new I/Q values (set enable bit last to match HAL sources) */
	FUNC1(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_I_COFF, i_coff);
	FUNC1(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_Q_Q_COFF, q_coff);
	FUNC0(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_CORR_ENABLE);

	/* Re-enable calibration -if we don't we'll commit
	 * the same values again and again */
	FUNC1(ah, AR5K_PHY_IQ,
			AR5K_PHY_IQ_CAL_NUM_LOG_MAX, 15);
	FUNC0(ah, AR5K_PHY_IQ, AR5K_PHY_IQ_RUN);

	return 0;
}