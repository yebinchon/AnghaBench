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
struct TYPE_3__ {int rev; } ;
struct b43_wldev {TYPE_2__* dev; TYPE_1__ phy; } ;
struct TYPE_4__ {int chip_id; scalar_t__ chip_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpphy_a0_aux_gain_idx_table ; 
 int /*<<< orphan*/  lpphy_a0_gain_idx_table ; 
 int /*<<< orphan*/  lpphy_a0_gain_table ; 
 int /*<<< orphan*/  lpphy_a0_gain_value_table ; 
 int /*<<< orphan*/  lpphy_aux_gain_idx_table ; 
 int /*<<< orphan*/  lpphy_gain_idx_table ; 
 int /*<<< orphan*/  lpphy_gain_table ; 
 int /*<<< orphan*/  lpphy_gain_value_table ; 
 int /*<<< orphan*/  lpphy_hf_table ; 
 int /*<<< orphan*/  lpphy_iqlo_cal_table ; 
 int /*<<< orphan*/  lpphy_min_sig_sq_table ; 
 int /*<<< orphan*/  lpphy_papd_eps_table ; 
 int /*<<< orphan*/  lpphy_papd_mult_table ; 
 int /*<<< orphan*/  lpphy_pll_fraction_table ; 
 int /*<<< orphan*/  lpphy_rev2plus_filter_control_table ; 
 int /*<<< orphan*/  lpphy_rev2plus_noise_scale_table ; 
 int /*<<< orphan*/  lpphy_rev2plus_ps_control_table ; 
 int /*<<< orphan*/  lpphy_sw_control_table ; 

void FUNC7(struct b43_wldev *dev)
{
	int i;

	FUNC4(dev->phy.rev < 2);

	for (i = 0; i < 704; i++)
		FUNC5(dev, FUNC2(7, i), 0);

	FUNC6(dev, FUNC3(2, 0),
		FUNC0(lpphy_min_sig_sq_table), lpphy_min_sig_sq_table);
	FUNC6(dev, FUNC1(1, 0),
		FUNC0(lpphy_rev2plus_noise_scale_table), lpphy_rev2plus_noise_scale_table);
	FUNC6(dev, FUNC2(11, 0),
		FUNC0(lpphy_rev2plus_filter_control_table), lpphy_rev2plus_filter_control_table);
	FUNC6(dev, FUNC2(12, 0),
		FUNC0(lpphy_rev2plus_ps_control_table), lpphy_rev2plus_ps_control_table);
	FUNC6(dev, FUNC2(13, 0),
		FUNC0(lpphy_gain_idx_table), lpphy_gain_idx_table);
	FUNC6(dev, FUNC1(14, 0),
		FUNC0(lpphy_aux_gain_idx_table), lpphy_aux_gain_idx_table);
	FUNC6(dev, FUNC1(15, 0),
		FUNC0(lpphy_sw_control_table), lpphy_sw_control_table);
	FUNC6(dev, FUNC3(16, 0),
		FUNC0(lpphy_hf_table), lpphy_hf_table);
	FUNC6(dev, FUNC2(17, 0),
		FUNC0(lpphy_gain_value_table), lpphy_gain_value_table);
	FUNC6(dev, FUNC1(18, 0),
		FUNC0(lpphy_gain_table), lpphy_gain_table);
	FUNC6(dev, FUNC3(6, 0),
		FUNC0(lpphy_pll_fraction_table), lpphy_pll_fraction_table);
	FUNC6(dev, FUNC1(0, 0),
		FUNC0(lpphy_iqlo_cal_table), lpphy_iqlo_cal_table);
	FUNC6(dev, FUNC2(9, 0),
		FUNC0(lpphy_papd_eps_table), lpphy_papd_eps_table);
	FUNC6(dev, FUNC2(10, 0),
		FUNC0(lpphy_papd_mult_table), lpphy_papd_mult_table);

	if ((dev->dev->chip_id == 0x4325) && (dev->dev->chip_rev == 0)) {
		FUNC6(dev, FUNC2(13, 0),
			FUNC0(lpphy_a0_gain_idx_table), lpphy_a0_gain_idx_table);
		FUNC6(dev, FUNC1(14, 0),
			FUNC0(lpphy_a0_aux_gain_idx_table), lpphy_a0_aux_gain_idx_table);
		FUNC6(dev, FUNC2(17, 0),
			FUNC0(lpphy_a0_gain_value_table), lpphy_a0_gain_value_table);
		FUNC6(dev, FUNC1(18, 0),
			FUNC0(lpphy_a0_gain_table), lpphy_a0_gain_table);
	}
}