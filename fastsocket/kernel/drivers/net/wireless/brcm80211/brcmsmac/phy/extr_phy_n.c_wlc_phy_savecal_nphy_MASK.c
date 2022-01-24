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
typedef  void* u16 ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct TYPE_4__ {void* txcal_coeffs_5G; void** txcal_radio_regs_5G; int /*<<< orphan*/  rxcal_coeffs_5G; void* txcal_coeffs_2G; void** txcal_radio_regs_2G; int /*<<< orphan*/  rxcal_coeffs_2G; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; TYPE_1__ pubpi; TYPE_2__ calibration_cache; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  nphy_iqcal_chanspec_5G; int /*<<< orphan*/  nphy_iqcal_chanspec_2G; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOFT_COARSE_I ; 
 int /*<<< orphan*/  LOFT_COARSE_Q ; 
 int /*<<< orphan*/  LOFT_FINE_I ; 
 int /*<<< orphan*/  LOFT_FINE_Q ; 
 int /*<<< orphan*/  NPHY_TBL_ID_IQLOCAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RADIO_2055_CORE1_TX_BB_MXGM ; 
 int RADIO_2055_CORE1_TX_VOS_CNCL ; 
 int RADIO_2055_CORE2_TX_BB_MXGM ; 
 int RADIO_2055_CORE2_TX_VOS_CNCL ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_LOFT_COARSE_I ; 
 int RADIO_2056_TX_LOFT_COARSE_Q ; 
 int RADIO_2056_TX_LOFT_FINE_I ; 
 int RADIO_2056_TX_LOFT_FINE_Q ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 void* FUNC2 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX ; 
 void* FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,void*) ; 

__attribute__((used)) static void FUNC7(struct brcms_phy *pi)
{
	void *tbl_ptr;
	int coreNum;
	u16 *txcal_radio_regs = NULL;

	if (pi->phyhang_avoid)
		FUNC5(pi, true);

	if (FUNC0(pi->radio_chanspec)) {

		FUNC4(pi, 0,
					  &pi->calibration_cache.
					  rxcal_coeffs_2G);

		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			txcal_radio_regs =
				pi->calibration_cache.txcal_radio_regs_2G;
		} else if (FUNC1(pi->pubpi.phy_rev, 3)) {

			pi->calibration_cache.txcal_radio_regs_2G[0] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_I |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_2G[1] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_Q |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_2G[2] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_I |
					       RADIO_2056_TX1);
			pi->calibration_cache.txcal_radio_regs_2G[3] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_Q |
					       RADIO_2056_TX1);

			pi->calibration_cache.txcal_radio_regs_2G[4] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_I |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_2G[5] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_Q |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_2G[6] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_I |
					       RADIO_2056_TX1);
			pi->calibration_cache.txcal_radio_regs_2G[7] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_Q |
					       RADIO_2056_TX1);
		} else {
			pi->calibration_cache.txcal_radio_regs_2G[0] =
			       FUNC3(pi, RADIO_2055_CORE1_TX_VOS_CNCL);
			pi->calibration_cache.txcal_radio_regs_2G[1] =
			       FUNC3(pi, RADIO_2055_CORE2_TX_VOS_CNCL);
			pi->calibration_cache.txcal_radio_regs_2G[2] =
			       FUNC3(pi, RADIO_2055_CORE1_TX_BB_MXGM);
			pi->calibration_cache.txcal_radio_regs_2G[3] =
			       FUNC3(pi, RADIO_2055_CORE2_TX_BB_MXGM);
		}

		pi->nphy_iqcal_chanspec_2G = pi->radio_chanspec;
		tbl_ptr = pi->calibration_cache.txcal_coeffs_2G;
	} else {

		FUNC4(pi, 0,
					  &pi->calibration_cache.
					  rxcal_coeffs_5G);

		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			txcal_radio_regs =
				pi->calibration_cache.txcal_radio_regs_5G;
		} else if (FUNC1(pi->pubpi.phy_rev, 3)) {

			pi->calibration_cache.txcal_radio_regs_5G[0] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_I |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_5G[1] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_Q |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_5G[2] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_I |
					       RADIO_2056_TX1);
			pi->calibration_cache.txcal_radio_regs_5G[3] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_FINE_Q |
					       RADIO_2056_TX1);

			pi->calibration_cache.txcal_radio_regs_5G[4] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_I |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_5G[5] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_Q |
					       RADIO_2056_TX0);
			pi->calibration_cache.txcal_radio_regs_5G[6] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_I |
					       RADIO_2056_TX1);
			pi->calibration_cache.txcal_radio_regs_5G[7] =
				FUNC3(pi,
					       RADIO_2056_TX_LOFT_COARSE_Q |
					       RADIO_2056_TX1);
		} else {
			pi->calibration_cache.txcal_radio_regs_5G[0] =
			       FUNC3(pi, RADIO_2055_CORE1_TX_VOS_CNCL);
			pi->calibration_cache.txcal_radio_regs_5G[1] =
			       FUNC3(pi, RADIO_2055_CORE2_TX_VOS_CNCL);
			pi->calibration_cache.txcal_radio_regs_5G[2] =
			       FUNC3(pi, RADIO_2055_CORE1_TX_BB_MXGM);
			pi->calibration_cache.txcal_radio_regs_5G[3] =
			       FUNC3(pi, RADIO_2055_CORE2_TX_BB_MXGM);
		}

		pi->nphy_iqcal_chanspec_5G = pi->radio_chanspec;
		tbl_ptr = pi->calibration_cache.txcal_coeffs_5G;
	}
	if (FUNC1(pi->pubpi.phy_rev, 7)) {
		for (coreNum = 0; coreNum <= 1; coreNum++) {

			txcal_radio_regs[2 * coreNum] =
				FUNC2(pi, RADIO_2057, TX, coreNum,
						LOFT_FINE_I);
			txcal_radio_regs[2 * coreNum + 1] =
				FUNC2(pi, RADIO_2057, TX, coreNum,
						LOFT_FINE_Q);

			txcal_radio_regs[2 * coreNum + 4] =
				FUNC2(pi, RADIO_2057, TX, coreNum,
						LOFT_COARSE_I);
			txcal_radio_regs[2 * coreNum + 5] =
				FUNC2(pi, RADIO_2057, TX, coreNum,
						LOFT_COARSE_Q);
		}
	}

	FUNC6(pi, NPHY_TBL_ID_IQLOCAL, 8, 80, 16, tbl_ptr);

	if (pi->phyhang_avoid)
		FUNC5(pi, false);
}