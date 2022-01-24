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
typedef  int u16 ;
struct TYPE_2__ {int radiorev; int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {int /*<<< orphan*/ * tx_rx_cal_radio_saveregs; TYPE_1__ pubpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IQCAL_IDAC ; 
 int /*<<< orphan*/  IQCAL_VCM_HG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_0 ; 
 int RADIO_2055_CORE1_TXRF_IQCAL1 ; 
 int RADIO_2055_CORE1_TXRF_IQCAL2 ; 
 int RADIO_2055_CORE2_TXRF_IQCAL1 ; 
 int RADIO_2055_CORE2_TXRF_IQCAL2 ; 
 int RADIO_2055_PWRDET_RXTX_CORE1 ; 
 int RADIO_2055_PWRDET_RXTX_CORE2 ; 
 int RADIO_2056_TX0 ; 
 int RADIO_2056_TX1 ; 
 int RADIO_2056_TX_IQCAL_IDAC ; 
 int RADIO_2056_TX_IQCAL_VCM_HG ; 
 int RADIO_2056_TX_TSSIA ; 
 int RADIO_2056_TX_TSSIG ; 
 int RADIO_2056_TX_TSSI_MISC1 ; 
 int RADIO_2056_TX_TSSI_MISC2 ; 
 int RADIO_2056_TX_TSSI_MISC3 ; 
 int RADIO_2056_TX_TSSI_VCM ; 
 int RADIO_2056_TX_TX_AMP_DET ; 
 int RADIO_2056_TX_TX_SSI_MASTER ; 
 int RADIO_2056_TX_TX_SSI_MUX ; 
 int /*<<< orphan*/  RADIO_2057 ; 
 int /*<<< orphan*/  TSSIA ; 
 int /*<<< orphan*/  TSSIG ; 
 int /*<<< orphan*/  TSSI_MISC1 ; 
 int /*<<< orphan*/  TSSI_VCM ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  TX_SSI_MASTER ; 
 int /*<<< orphan*/  TX_SSI_MUX ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi)
{
	u16 jtag_core, core;

	if (FUNC0(pi->pubpi.phy_rev, 7)) {
		for (core = 0; core <= 1; core++) {

			FUNC1(pi, RADIO_2057, TX, core,
					 TX_SSI_MASTER,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  0]);

			FUNC1(pi, RADIO_2057, TX, core, IQCAL_VCM_HG,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  1]);

			FUNC1(pi, RADIO_2057, TX, core, IQCAL_IDAC,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  2]);

			FUNC1(pi, RADIO_2057, TX, core, TSSI_VCM,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  3]);

			FUNC1(pi, RADIO_2057, TX, core, TX_SSI_MUX,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  5]);

			if (pi->pubpi.radiorev != 5)
				FUNC1(pi, RADIO_2057, TX, core,
						 TSSIA,
						 pi->tx_rx_cal_radio_saveregs
							     [(core * 11) + 6]);

			FUNC1(pi, RADIO_2057, TX, core, TSSIG,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  7]);

			FUNC1(pi, RADIO_2057, TX, core, TSSI_MISC1,
					 pi->
					 tx_rx_cal_radio_saveregs[(core * 11) +
								  8]);
		}
	} else if (FUNC0(pi->pubpi.phy_rev, 3)) {
		for (core = 0; core <= 1; core++) {
			jtag_core = (core == PHY_CORE_0) ?
				     RADIO_2056_TX0 : RADIO_2056_TX1;

			FUNC2(pi,
					RADIO_2056_TX_TX_SSI_MASTER | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 0]);

			FUNC2(pi,
					RADIO_2056_TX_IQCAL_VCM_HG | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 1]);

			FUNC2(pi,
					RADIO_2056_TX_IQCAL_IDAC | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 2]);

			FUNC2(pi, RADIO_2056_TX_TSSI_VCM | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 3]);

			FUNC2(pi,
					RADIO_2056_TX_TX_AMP_DET | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 4]);

			FUNC2(pi,
					RADIO_2056_TX_TX_SSI_MUX | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 5]);

			FUNC2(pi, RADIO_2056_TX_TSSIA | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 6]);

			FUNC2(pi, RADIO_2056_TX_TSSIG | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 7]);

			FUNC2(pi,
					RADIO_2056_TX_TSSI_MISC1 | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 8]);

			FUNC2(pi,
					RADIO_2056_TX_TSSI_MISC2 | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 9]);

			FUNC2(pi,
					RADIO_2056_TX_TSSI_MISC3 | jtag_core,
					pi->
					tx_rx_cal_radio_saveregs[(core * 11) +
								 10]);
		}
	} else {

		FUNC2(pi, RADIO_2055_CORE1_TXRF_IQCAL1,
				pi->tx_rx_cal_radio_saveregs[0]);
		FUNC2(pi, RADIO_2055_CORE1_TXRF_IQCAL2,
				pi->tx_rx_cal_radio_saveregs[1]);
		FUNC2(pi, RADIO_2055_CORE2_TXRF_IQCAL1,
				pi->tx_rx_cal_radio_saveregs[2]);
		FUNC2(pi, RADIO_2055_CORE2_TXRF_IQCAL2,
				pi->tx_rx_cal_radio_saveregs[3]);
		FUNC2(pi, RADIO_2055_PWRDET_RXTX_CORE1,
				pi->tx_rx_cal_radio_saveregs[4]);
		FUNC2(pi, RADIO_2055_PWRDET_RXTX_CORE2,
				pi->tx_rx_cal_radio_saveregs[5]);
	}
}