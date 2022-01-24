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
struct efx_nic {scalar_t__ loopback_mode; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct efx_nic*) ; 
 int FFE_AB_XX_FORCE_SIG_ALL_LANES ; 
 int /*<<< orphan*/  FRF_AB_XX_FORCE_SIG ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKA ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKB ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKC ; 
 int /*<<< orphan*/  FRF_AB_XX_LPBKD ; 
 int /*<<< orphan*/  FRF_AB_XX_XGMII_LB_EN ; 
 int /*<<< orphan*/  FRF_AB_XX_XGXS_LB_EN ; 
 int /*<<< orphan*/  FR_AB_XX_CORE_STAT ; 
 int /*<<< orphan*/  FR_AB_XX_SD_CTL ; 
 scalar_t__ LOOPBACK_XAUI ; 
 scalar_t__ LOOPBACK_XGMII ; 
 scalar_t__ LOOPBACK_XGXS ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 

__attribute__((used)) static void FUNC6(struct efx_nic *efx)
{
	efx_oword_t reg;
	bool xgxs_loopback = (efx->loopback_mode == LOOPBACK_XGXS);
	bool xaui_loopback = (efx->loopback_mode == LOOPBACK_XAUI);
	bool xgmii_loopback = (efx->loopback_mode == LOOPBACK_XGMII);

	/* XGXS block is flaky and will need to be reset if moving
	 * into our out of XGMII, XGXS or XAUI loopbacks. */
	if (FUNC2(efx)) {
		bool old_xgmii_loopback, old_xgxs_loopback, old_xaui_loopback;
		bool reset_xgxs;

		FUNC3(efx, &reg, FR_AB_XX_CORE_STAT);
		old_xgxs_loopback = FUNC0(reg, FRF_AB_XX_XGXS_LB_EN);
		old_xgmii_loopback =
			FUNC0(reg, FRF_AB_XX_XGMII_LB_EN);

		FUNC3(efx, &reg, FR_AB_XX_SD_CTL);
		old_xaui_loopback = FUNC0(reg, FRF_AB_XX_LPBKA);

		/* The PHY driver may have turned XAUI off */
		reset_xgxs = ((xgxs_loopback != old_xgxs_loopback) ||
			      (xaui_loopback != old_xaui_loopback) ||
			      (xgmii_loopback != old_xgmii_loopback));

		if (reset_xgxs)
			FUNC5(efx);
	}

	FUNC3(efx, &reg, FR_AB_XX_CORE_STAT);
	FUNC1(reg, FRF_AB_XX_FORCE_SIG,
			    (xgxs_loopback || xaui_loopback) ?
			    FFE_AB_XX_FORCE_SIG_ALL_LANES : 0);
	FUNC1(reg, FRF_AB_XX_XGXS_LB_EN, xgxs_loopback);
	FUNC1(reg, FRF_AB_XX_XGMII_LB_EN, xgmii_loopback);
	FUNC4(efx, &reg, FR_AB_XX_CORE_STAT);

	FUNC3(efx, &reg, FR_AB_XX_SD_CTL);
	FUNC1(reg, FRF_AB_XX_LPBKD, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKC, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKB, xaui_loopback);
	FUNC1(reg, FRF_AB_XX_LPBKA, xaui_loopback);
	FUNC4(efx, &reg, FR_AB_XX_SD_CTL);
}