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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct lcnphy_txgains {int dummy; } ;
struct lcnphy_rx_iqcomp {scalar_t__ chan; scalar_t__ b; scalar_t__ a; } ;
struct brcms_phy_lcnphy {int lcnphy_current_index; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LCNPHY_TX_PWR_CTRL_OFF ; 
 int /*<<< orphan*/  RADIO_2064_REG00B ; 
 int /*<<< orphan*/  RADIO_2064_REG01D ; 
 int /*<<< orphan*/  RADIO_2064_REG02E ; 
 int /*<<< orphan*/  RADIO_2064_REG06A ; 
 int /*<<< orphan*/  RADIO_2064_REG098 ; 
 int /*<<< orphan*/  RADIO_2064_REG113 ; 
 int /*<<< orphan*/  RADIO_2064_REG114 ; 
 int /*<<< orphan*/  RADIO_2064_REG116 ; 
 int /*<<< orphan*/  RADIO_2064_REG12A ; 
 int /*<<< orphan*/  RADIO_2064_REG12C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int FUNC6 (struct brcms_phy*,int) ; 
 int FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rxiq_cal_rf_reg ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,struct lcnphy_txgains*) ; 
 int FUNC13 (struct brcms_phy*) ; 
 int FUNC14 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct brcms_phy*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct brcms_phy*) ; 
 int FUNC23 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC24 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC26(struct brcms_phy *pi,
		     const struct lcnphy_rx_iqcomp *iqcomp,
		     int iqcomp_sz, bool tx_switch, bool rx_switch, int module,
		     int tx_gain_idx)
{
	struct lcnphy_txgains old_gains;
	u16 tx_pwr_ctrl;
	u8 tx_gain_index_old = 0;
	bool result = false, tx_gain_override_old = false;
	u16 i, Core1TxControl_old, RFOverride0_old,
	    RFOverrideVal0_old, rfoverride2_old, rfoverride2val_old,
	    rfoverride3_old, rfoverride3val_old, rfoverride4_old,
	    rfoverride4val_old, afectrlovr_old, afectrlovrval_old;
	int tia_gain;
	u32 received_power, rx_pwr_threshold;
	u16 old_sslpnCalibClkEnCtrl, old_sslpnRxFeClkEnCtrl;
	u16 values_to_save[11];
	s16 *ptr;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	ptr = FUNC2(sizeof(s16) * 131, GFP_ATOMIC);
	if (NULL == ptr)
		return false;
	if (module == 2) {
		while (iqcomp_sz--) {
			if (iqcomp[iqcomp_sz].chan ==
			    FUNC0(pi->radio_chanspec)) {
				FUNC17(pi,
							  (u16)
							  iqcomp[iqcomp_sz].a,
							  (u16)
							  iqcomp[iqcomp_sz].b);
				result = true;
				break;
			}
		}
		goto cal_done;
	}

	if (module == 1) {

		tx_pwr_ctrl = FUNC13(pi);
		FUNC20(pi, LCNPHY_TX_PWR_CTRL_OFF);

		for (i = 0; i < 11; i++)
			values_to_save[i] =
				FUNC7(pi, rxiq_cal_rf_reg[i]);
		Core1TxControl_old = FUNC6(pi, 0x631);

		FUNC5(pi, 0x631, 0x0015);

		RFOverride0_old = FUNC6(pi, 0x44c);
		RFOverrideVal0_old = FUNC6(pi, 0x44d);
		rfoverride2_old = FUNC6(pi, 0x4b0);
		rfoverride2val_old = FUNC6(pi, 0x4b1);
		rfoverride3_old = FUNC6(pi, 0x4f9);
		rfoverride3val_old = FUNC6(pi, 0x4fa);
		rfoverride4_old = FUNC6(pi, 0x938);
		rfoverride4val_old = FUNC6(pi, 0x939);
		afectrlovr_old = FUNC6(pi, 0x43b);
		afectrlovrval_old = FUNC6(pi, 0x43c);
		old_sslpnCalibClkEnCtrl = FUNC6(pi, 0x6da);
		old_sslpnRxFeClkEnCtrl = FUNC6(pi, 0x6db);

		tx_gain_override_old = FUNC23(pi);
		if (tx_gain_override_old) {
			FUNC12(pi, &old_gains);
			tx_gain_index_old = pi_lcn->lcnphy_current_index;
		}

		FUNC19(pi, tx_gain_idx);

		FUNC3(pi, 0x4f9, (0x1 << 0), 1 << 0);
		FUNC3(pi, 0x4fa, (0x1 << 0), 0 << 0);

		FUNC3(pi, 0x43b, (0x1 << 1), 1 << 1);
		FUNC3(pi, 0x43c, (0x1 << 1), 0 << 1);

		FUNC25(pi, RADIO_2064_REG116, 0x06);
		FUNC25(pi, RADIO_2064_REG12C, 0x07);
		FUNC25(pi, RADIO_2064_REG06A, 0xd3);
		FUNC25(pi, RADIO_2064_REG098, 0x03);
		FUNC25(pi, RADIO_2064_REG00B, 0x7);
		FUNC4(pi, RADIO_2064_REG113, 1 << 4, 1 << 4);
		FUNC25(pi, RADIO_2064_REG01D, 0x01);
		FUNC25(pi, RADIO_2064_REG114, 0x01);
		FUNC25(pi, RADIO_2064_REG02E, 0x10);
		FUNC25(pi, RADIO_2064_REG12A, 0x08);

		FUNC3(pi, 0x938, (0x1 << 0), 1 << 0);
		FUNC3(pi, 0x939, (0x1 << 0), 0 << 0);
		FUNC3(pi, 0x938, (0x1 << 1), 1 << 1);
		FUNC3(pi, 0x939, (0x1 << 1), 1 << 1);
		FUNC3(pi, 0x938, (0x1 << 2), 1 << 2);
		FUNC3(pi, 0x939, (0x1 << 2), 1 << 2);
		FUNC3(pi, 0x938, (0x1 << 3), 1 << 3);
		FUNC3(pi, 0x939, (0x1 << 3), 1 << 3);
		FUNC3(pi, 0x938, (0x1 << 5), 1 << 5);
		FUNC3(pi, 0x939, (0x1 << 5), 0 << 5);

		FUNC3(pi, 0x43b, (0x1 << 0), 1 << 0);
		FUNC3(pi, 0x43c, (0x1 << 0), 0 << 0);

		FUNC21(pi, 2000, 120, 0);
		FUNC24(pi, 0x6da, 0xffff);
		FUNC5(pi, 0x6db, 0x3);
		FUNC18(pi, tx_switch, rx_switch);
		FUNC15(pi, true);

		tia_gain = 8;
		rx_pwr_threshold = 950;
		while (tia_gain > 0) {
			tia_gain -= 1;
			FUNC16(pi,
							       0, 0, 2, 2,
							       (u16)
							       tia_gain, 1, 0);
			FUNC8(500);

			received_power =
				FUNC14(pi, 2000);
			if (received_power < rx_pwr_threshold)
				break;
		}
		result = FUNC9(pi, 0xffff);

		FUNC22(pi);

		FUNC24(pi, 0x631, Core1TxControl_old);

		FUNC24(pi, 0x44c, RFOverrideVal0_old);
		FUNC24(pi, 0x44d, RFOverrideVal0_old);
		FUNC24(pi, 0x4b0, rfoverride2_old);
		FUNC24(pi, 0x4b1, rfoverride2val_old);
		FUNC24(pi, 0x4f9, rfoverride3_old);
		FUNC24(pi, 0x4fa, rfoverride3val_old);
		FUNC24(pi, 0x938, rfoverride4_old);
		FUNC24(pi, 0x939, rfoverride4val_old);
		FUNC24(pi, 0x43b, afectrlovr_old);
		FUNC24(pi, 0x43c, afectrlovrval_old);
		FUNC24(pi, 0x6da, old_sslpnCalibClkEnCtrl);
		FUNC24(pi, 0x6db, old_sslpnRxFeClkEnCtrl);

		FUNC10(pi);

		FUNC3(pi, 0x44c, (0x1 << 2), 0 << 2);

		for (i = 0; i < 11; i++)
			FUNC25(pi, rxiq_cal_rf_reg[i],
					values_to_save[i]);

		if (tx_gain_override_old)
			FUNC19(pi, tx_gain_index_old);
		else
			FUNC11(pi);

		FUNC20(pi, tx_pwr_ctrl);
		FUNC15(pi, false);
	}

cal_done:
	FUNC1(ptr);
	return result;
}