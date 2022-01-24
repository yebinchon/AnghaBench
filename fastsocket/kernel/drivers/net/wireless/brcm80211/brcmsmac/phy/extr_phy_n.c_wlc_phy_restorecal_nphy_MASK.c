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
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxcal_coeffs_5G; scalar_t__* txcal_radio_regs_5G; int /*<<< orphan*/  rxcal_coeffs_2G; scalar_t__* txcal_radio_regs_2G; scalar_t__* txcal_coeffs_5G; scalar_t__* txcal_coeffs_2G; } ;
struct brcms_phy {scalar_t__ nphy_iqcal_chanspec_2G; scalar_t__ nphy_iqcal_chanspec_5G; TYPE_1__ pubpi; TYPE_2__ calibration_cache; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOFT_COARSE_I ; 
 int /*<<< orphan*/  LOFT_COARSE_Q ; 
 int /*<<< orphan*/  LOFT_FINE_I ; 
 int /*<<< orphan*/  LOFT_FINE_Q ; 
 int /*<<< orphan*/  NPHY_TBL_ID_IQLOCAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct brcms_phy *pi)
{
	u16 *loft_comp;
	u16 txcal_coeffs_bphy[4];
	u16 *tbl_ptr;
	int coreNum;
	u16 *txcal_radio_regs = NULL;

	if (FUNC0(pi->radio_chanspec)) {
		if (pi->nphy_iqcal_chanspec_2G == 0)
			return;

		tbl_ptr = pi->calibration_cache.txcal_coeffs_2G;
		loft_comp = &pi->calibration_cache.txcal_coeffs_2G[5];
	} else {
		if (pi->nphy_iqcal_chanspec_5G == 0)
			return;

		tbl_ptr = pi->calibration_cache.txcal_coeffs_5G;
		loft_comp = &pi->calibration_cache.txcal_coeffs_5G[5];
	}

	FUNC5(pi, NPHY_TBL_ID_IQLOCAL, 4, 80, 16, tbl_ptr);

	if (FUNC1(pi->pubpi.phy_rev, 3)) {
		txcal_coeffs_bphy[0] = tbl_ptr[0];
		txcal_coeffs_bphy[1] = tbl_ptr[1];
		txcal_coeffs_bphy[2] = tbl_ptr[2];
		txcal_coeffs_bphy[3] = tbl_ptr[3];
	} else {
		txcal_coeffs_bphy[0] = 0;
		txcal_coeffs_bphy[1] = 0;
		txcal_coeffs_bphy[2] = 0;
		txcal_coeffs_bphy[3] = 0;
	}

	FUNC5(pi, NPHY_TBL_ID_IQLOCAL, 4, 88, 16,
				 txcal_coeffs_bphy);

	FUNC5(pi, NPHY_TBL_ID_IQLOCAL, 2, 85, 16, loft_comp);

	FUNC5(pi, NPHY_TBL_ID_IQLOCAL, 2, 93, 16, loft_comp);

	if (FUNC2(pi->pubpi.phy_rev, 2))
		FUNC6(pi);

	if (FUNC0(pi->radio_chanspec)) {
		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			txcal_radio_regs =
				pi->calibration_cache.txcal_radio_regs_2G;
		} else if (FUNC1(pi->pubpi.phy_rev, 3)) {

			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_I |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_2G[0]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_Q |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_2G[1]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_I |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_2G[2]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_Q |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_2G[3]);

			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_I |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_2G[4]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_Q |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_2G[5]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_I |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_2G[6]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_Q |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_2G[7]);
		} else {
			FUNC7(pi, RADIO_2055_CORE1_TX_VOS_CNCL,
					pi->calibration_cache.
					txcal_radio_regs_2G[0]);
			FUNC7(pi, RADIO_2055_CORE2_TX_VOS_CNCL,
					pi->calibration_cache.
					txcal_radio_regs_2G[1]);
			FUNC7(pi, RADIO_2055_CORE1_TX_BB_MXGM,
					pi->calibration_cache.
					txcal_radio_regs_2G[2]);
			FUNC7(pi, RADIO_2055_CORE2_TX_BB_MXGM,
					pi->calibration_cache.
					txcal_radio_regs_2G[3]);
		}

		FUNC4(pi, 1,
					  &pi->calibration_cache.
					  rxcal_coeffs_2G);
	} else {
		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			txcal_radio_regs =
				pi->calibration_cache.txcal_radio_regs_5G;
		} else if (FUNC1(pi->pubpi.phy_rev, 3)) {

			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_I |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_5G[0]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_Q |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_5G[1]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_I |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_5G[2]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_FINE_Q |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_5G[3]);

			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_I |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_5G[4]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_Q |
					RADIO_2056_TX0,
					pi->calibration_cache.
					txcal_radio_regs_5G[5]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_I |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_5G[6]);
			FUNC7(pi,
					RADIO_2056_TX_LOFT_COARSE_Q |
					RADIO_2056_TX1,
					pi->calibration_cache.
					txcal_radio_regs_5G[7]);
		} else {
			FUNC7(pi, RADIO_2055_CORE1_TX_VOS_CNCL,
					pi->calibration_cache.
					txcal_radio_regs_5G[0]);
			FUNC7(pi, RADIO_2055_CORE2_TX_VOS_CNCL,
					pi->calibration_cache.
					txcal_radio_regs_5G[1]);
			FUNC7(pi, RADIO_2055_CORE1_TX_BB_MXGM,
					pi->calibration_cache.
					txcal_radio_regs_5G[2]);
			FUNC7(pi, RADIO_2055_CORE2_TX_BB_MXGM,
					pi->calibration_cache.
					txcal_radio_regs_5G[3]);
		}

		FUNC4(pi, 1,
					  &pi->calibration_cache.
					  rxcal_coeffs_5G);
	}

	if (FUNC1(pi->pubpi.phy_rev, 7)) {
		for (coreNum = 0; coreNum <= 1; coreNum++) {

			FUNC3(pi, RADIO_2057, TX, coreNum,
					 LOFT_FINE_I,
					 txcal_radio_regs[2 * coreNum]);
			FUNC3(pi, RADIO_2057, TX, coreNum,
					 LOFT_FINE_Q,
					 txcal_radio_regs[2 * coreNum + 1]);

			FUNC3(pi, RADIO_2057, TX, coreNum,
					 LOFT_COARSE_I,
					 txcal_radio_regs[2 * coreNum + 4]);
			FUNC3(pi, RADIO_2057, TX, coreNum,
					 LOFT_COARSE_Q,
					 txcal_radio_regs[2 * coreNum + 5]);
		}
	}
}