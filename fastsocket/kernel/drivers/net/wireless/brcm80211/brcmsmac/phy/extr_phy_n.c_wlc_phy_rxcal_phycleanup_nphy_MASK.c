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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/ * tx_rx_cal_phy_saveregs; TYPE_1__ pubpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHY_CORE_0 ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi, u8 rx_core)
{

	FUNC1(pi, 0xa2, pi->tx_rx_cal_phy_saveregs[0]);
	FUNC1(pi, (rx_core == PHY_CORE_0) ? 0xa6 : 0xa7,
		      pi->tx_rx_cal_phy_saveregs[1]);
	FUNC1(pi, (rx_core == PHY_CORE_0) ? 0x8f : 0xa5,
		      pi->tx_rx_cal_phy_saveregs[2]);
	FUNC1(pi, 0x91, pi->tx_rx_cal_phy_saveregs[3]);
	FUNC1(pi, 0x92, pi->tx_rx_cal_phy_saveregs[4]);

	FUNC1(pi, 0x7a, pi->tx_rx_cal_phy_saveregs[5]);
	FUNC1(pi, 0x7d, pi->tx_rx_cal_phy_saveregs[6]);
	FUNC1(pi, 0xe7, pi->tx_rx_cal_phy_saveregs[7]);
	FUNC1(pi, 0xec, pi->tx_rx_cal_phy_saveregs[8]);
	if (FUNC0(pi->pubpi.phy_rev, 7)) {
		FUNC1(pi, 0x342, pi->tx_rx_cal_phy_saveregs[11]);
		FUNC1(pi, 0x343, pi->tx_rx_cal_phy_saveregs[12]);
		FUNC1(pi, 0x346, pi->tx_rx_cal_phy_saveregs[13]);
		FUNC1(pi, 0x347, pi->tx_rx_cal_phy_saveregs[14]);
	}

	FUNC1(pi, 0x297, pi->tx_rx_cal_phy_saveregs[9]);
	FUNC1(pi, 0x29b, pi->tx_rx_cal_phy_saveregs[10]);
}