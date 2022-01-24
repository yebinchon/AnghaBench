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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tx_corr_coeff ;
struct coeff {int** mag_coeff; int** phs_coeff; int* iqc_coeff; } ;
struct ath_hw {int txchainmask; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {int** tx_corr_coeff; int* num_measures; int done_txiqcal_once; } ;

/* Variables and functions */
 int AR9300_MAX_CHAINS ; 
 int /*<<< orphan*/  AR_PHY_CALIBRATED_GAINS_0 ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0 ; 
 int /*<<< orphan*/  AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3 ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  AR_PHY_TX_IQCAL_STATUS_B0 ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  MAX_MAG_DELTA ; 
 int MAX_MEASUREMENT ; 
 int /*<<< orphan*/  MAX_PHS_DELTA ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah,
						 struct coeff *coeff,
						 bool is_reusable)
{
	int i, im, nmeasurement;
	u32 tx_corr_coeff[MAX_MEASUREMENT][AR9300_MAX_CHAINS];
	struct ath9k_hw_cal_data *caldata = ah->caldata;

	FUNC7(tx_corr_coeff, 0, sizeof(tx_corr_coeff));
	for (i = 0; i < MAX_MEASUREMENT / 2; i++) {
		tx_corr_coeff[i * 2][0] = tx_corr_coeff[(i * 2) + 1][0] =
					FUNC0(i);
		if (!FUNC3(ah)) {
			tx_corr_coeff[i * 2][1] =
			tx_corr_coeff[(i * 2) + 1][1] =
					FUNC1(i);

			tx_corr_coeff[i * 2][2] =
			tx_corr_coeff[(i * 2) + 1][2] =
					FUNC2(i);
		}
	}

	/* Load the average of 2 passes */
	for (i = 0; i < AR9300_MAX_CHAINS; i++) {
		if (!(ah->txchainmask & (1 << i)))
			continue;
		nmeasurement = FUNC4(ah,
				AR_PHY_TX_IQCAL_STATUS_B0,
				AR_PHY_CALIBRATED_GAINS_0);

		if (nmeasurement > MAX_MEASUREMENT)
			nmeasurement = MAX_MEASUREMENT;

		/* detect outlier only if nmeasurement > 1 */
		if (nmeasurement > 1) {
			/* Detect magnitude outlier */
			FUNC6(coeff->mag_coeff[i],
					nmeasurement, MAX_MAG_DELTA);

			/* Detect phase outlier */
			FUNC6(coeff->phs_coeff[i],
					nmeasurement, MAX_PHS_DELTA);
		}

		for (im = 0; im < nmeasurement; im++) {

			coeff->iqc_coeff[0] = (coeff->mag_coeff[i][im] & 0x7f) |
				((coeff->phs_coeff[i][im] & 0x7f) << 7);

			if ((im % 2) == 0)
				FUNC5(ah, tx_corr_coeff[im][i],
					AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE,
					coeff->iqc_coeff[0]);
			else
				FUNC5(ah, tx_corr_coeff[im][i],
					AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE,
					coeff->iqc_coeff[0]);

			if (caldata)
				caldata->tx_corr_coeff[im][i] =
					coeff->iqc_coeff[0];
		}
		if (caldata)
			caldata->num_measures[i] = nmeasurement;
	}

	FUNC5(ah, AR_PHY_TX_IQCAL_CONTROL_3,
		      AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, 0x1);
	FUNC5(ah, AR_PHY_RX_IQCAL_CORR_B0,
		      AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, 0x1);

	if (caldata)
		caldata->done_txiqcal_once = is_reusable;

	return;
}