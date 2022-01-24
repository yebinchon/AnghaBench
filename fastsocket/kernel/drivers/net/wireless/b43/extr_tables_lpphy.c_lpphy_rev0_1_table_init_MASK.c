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
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpphy_crs_gain_nft_table ; 
 int /*<<< orphan*/  lpphy_gain_delta_table ; 
 int /*<<< orphan*/  lpphy_iqlo_cal_table ; 
 int /*<<< orphan*/  lpphy_min_sig_sq_table ; 
 int /*<<< orphan*/  lpphy_pll_fraction_table ; 
 int /*<<< orphan*/  lpphy_rev01_filter_control_table ; 
 int /*<<< orphan*/  lpphy_rev01_noise_scale_table ; 
 int /*<<< orphan*/  lpphy_rev01_ps_control_table ; 
 int /*<<< orphan*/  lpphy_rev0_ofdm_cck_gain_table ; 
 int /*<<< orphan*/  lpphy_rev1_ofdm_cck_gain_table ; 
 int /*<<< orphan*/  lpphy_tx_power_control_table ; 

void FUNC6(struct b43_wldev *dev)
{
	FUNC4(dev->phy.rev >= 2);

	FUNC5(dev, FUNC3(2, 0),
		FUNC0(lpphy_min_sig_sq_table), lpphy_min_sig_sq_table);
	FUNC5(dev, FUNC1(1, 0),
		FUNC0(lpphy_rev01_noise_scale_table), lpphy_rev01_noise_scale_table);
	FUNC5(dev, FUNC1(14, 0),
		FUNC0(lpphy_crs_gain_nft_table), lpphy_crs_gain_nft_table);
	FUNC5(dev, FUNC1(8, 0),
		FUNC0(lpphy_rev01_filter_control_table), lpphy_rev01_filter_control_table);
	FUNC5(dev, FUNC2(9, 0),
		FUNC0(lpphy_rev01_ps_control_table), lpphy_rev01_ps_control_table);
	FUNC5(dev, FUNC3(6, 0),
		FUNC0(lpphy_pll_fraction_table), lpphy_pll_fraction_table);
	FUNC5(dev, FUNC1(0, 0),
		FUNC0(lpphy_iqlo_cal_table), lpphy_iqlo_cal_table);
	if (dev->phy.rev == 0) {
		FUNC5(dev, FUNC1(13, 0),
			FUNC0(lpphy_rev0_ofdm_cck_gain_table), lpphy_rev0_ofdm_cck_gain_table);
		FUNC5(dev, FUNC1(12, 0),
			FUNC0(lpphy_rev0_ofdm_cck_gain_table), lpphy_rev0_ofdm_cck_gain_table);
	} else {
		FUNC5(dev, FUNC1(13, 0),
			FUNC0(lpphy_rev1_ofdm_cck_gain_table), lpphy_rev1_ofdm_cck_gain_table);
		FUNC5(dev, FUNC1(12, 0),
			FUNC0(lpphy_rev1_ofdm_cck_gain_table), lpphy_rev1_ofdm_cck_gain_table);
}
	FUNC5(dev, FUNC1(15, 0),
		FUNC0(lpphy_gain_delta_table), lpphy_gain_delta_table);
	FUNC5(dev, FUNC2(10, 0),
		FUNC0(lpphy_tx_power_control_table), lpphy_tx_power_control_table);
}