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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ath9k_hw_mci {int update_2g5g; int config; int last_recovery; int query_bt; int need_flush_btinfo; int /*<<< orphan*/  unhalt_bt_gpm; void* bt_state; int /*<<< orphan*/  ready; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BTCOEX_CTRL ; 
 int AR_BTCOEX_CTRL_MCI_MODE_EN ; 
 int /*<<< orphan*/  AR_GLB_GPIO_CONTROL ; 
 int /*<<< orphan*/  AR_MCI_RX_LAST_SCHD_MSG_INDEX ; 
 int /*<<< orphan*/  AR_MCI_RX_REMOTE_SLEEP ; 
 int /*<<< orphan*/  AR_MCI_RX_STATUS ; 
 int ATH_MCI_CONFIG_DISABLE_FTP_STOMP ; 
 int ATH_MCI_CONFIG_MCI_OBS_GPIO ; 
 int ATH_MCI_CONFIG_MCI_OBS_MASK ; 
 int /*<<< orphan*/  MCI ; 
 void* MCI_BT_AWAKE ; 
 void* MCI_BT_SLEEP ; 
 int /*<<< orphan*/  MCI_GPM_COEX_QUERY_BT_TOPOLOGY ; 
 int MCI_RECOVERY_DUR_TSF ; 
#define  MCI_STATE_ENABLE 138 
#define  MCI_STATE_LAST_SCHD_MSG_OFFSET 137 
#define  MCI_STATE_NEED_FLUSH_BT_INFO 136 
#define  MCI_STATE_NEED_FTP_STOMP 135 
#define  MCI_STATE_RECOVER_RX 134 
#define  MCI_STATE_REMOTE_SLEEP 133 
#define  MCI_STATE_RESET_REQ_WAKE 132 
#define  MCI_STATE_SEND_STATUS_QUERY 131 
#define  MCI_STATE_SEND_VERSION_QUERY 130 
#define  MCI_STATE_SEND_WLAN_COEX_VERSION 129 
#define  MCI_STATE_SET_BT_AWAKE 128 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

u32 FUNC14(struct ath_hw *ah, u32 state_type)
{
	struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;
	u32 value = 0, tsf;
	u8 query_type;

	switch (state_type) {
	case MCI_STATE_ENABLE:
		if (mci->ready) {
			value = FUNC1(ah, AR_BTCOEX_CTRL);

			if ((value == 0xdeadbeef) || (value == 0xffffffff))
				value = 0;
		}
		value &= AR_BTCOEX_CTRL_MCI_MODE_EN;
		break;
	case MCI_STATE_LAST_SCHD_MSG_OFFSET:
		value = FUNC0(FUNC1(ah, AR_MCI_RX_STATUS),
				    AR_MCI_RX_LAST_SCHD_MSG_INDEX);
		/* Make it in bytes */
		value <<= 4;
		break;
	case MCI_STATE_REMOTE_SLEEP:
		value = FUNC0(FUNC1(ah, AR_MCI_RX_STATUS),
			   AR_MCI_RX_REMOTE_SLEEP) ?
			MCI_BT_SLEEP : MCI_BT_AWAKE;
		break;
	case MCI_STATE_SET_BT_AWAKE:
		mci->bt_state = MCI_BT_AWAKE;
		FUNC8(ah, true);
		FUNC10(ah, true);

		if (mci->unhalt_bt_gpm)
			FUNC7(ah, false, true);

		FUNC2(ah, false);
		break;
	case MCI_STATE_RESET_REQ_WAKE:
		FUNC5(ah);
		mci->update_2g5g = true;

		if (mci->config & ATH_MCI_CONFIG_MCI_OBS_MASK) {
			/* Check if we still have control of the GPIOs */
			if ((FUNC1(ah, AR_GLB_GPIO_CONTROL) &
			     ATH_MCI_CONFIG_MCI_OBS_GPIO) !=
			    ATH_MCI_CONFIG_MCI_OBS_GPIO) {
				FUNC3(ah);
			}
		}
		break;
	case MCI_STATE_SEND_WLAN_COEX_VERSION:
		FUNC9(ah, true);
		break;
	case MCI_STATE_SEND_VERSION_QUERY:
		FUNC8(ah, true);
		break;
	case MCI_STATE_SEND_STATUS_QUERY:
		query_type = MCI_GPM_COEX_QUERY_BT_TOPOLOGY;
		FUNC6(ah, true, query_type);
		break;
	case MCI_STATE_RECOVER_RX:
		tsf = FUNC12(ah);
		if ((tsf - mci->last_recovery) <= MCI_RECOVERY_DUR_TSF) {
			FUNC13(FUNC11(ah), MCI,
				"(MCI) ignore Rx recovery\n");
			break;
		}
		FUNC13(FUNC11(ah), MCI, "(MCI) RECOVER RX\n");
		mci->last_recovery = tsf;
		FUNC4(ah);
		mci->query_bt = true;
		mci->need_flush_btinfo = true;
		FUNC10(ah, true);
		FUNC2(ah, false);
		break;
	case MCI_STATE_NEED_FTP_STOMP:
		value = !(mci->config & ATH_MCI_CONFIG_DISABLE_FTP_STOMP);
		break;
	case MCI_STATE_NEED_FLUSH_BT_INFO:
		value = (!mci->unhalt_bt_gpm && mci->need_flush_btinfo) ? 1 : 0;
		mci->need_flush_btinfo = false;
		break;
	default:
		break;
	}

	return value;
}