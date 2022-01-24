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
typedef  int u32 ;
struct lbs_private {int /*<<< orphan*/  sync_channel; int /*<<< orphan*/  mode; int /*<<< orphan*/  mesh_dev; int /*<<< orphan*/  tx_pending_len; int /*<<< orphan*/  mesh_open; int /*<<< orphan*/  mesh_connect_status; int /*<<< orphan*/  mesh_autostart_enabled; int /*<<< orphan*/  needtowakeup; int /*<<< orphan*/  psstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  IW_MODE_ADHOC ; 
 int /*<<< orphan*/  LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
#define  MACREG_INT_CODE_ADHOC_BCN_LOST 145 
#define  MACREG_INT_CODE_DEAUTHENTICATED 144 
#define  MACREG_INT_CODE_DISASSOCIATED 143 
#define  MACREG_INT_CODE_HOST_AWAKE 142 
#define  MACREG_INT_CODE_INIT_DONE 141 
#define  MACREG_INT_CODE_LINK_LOST_NO_SCAN 140 
#define  MACREG_INT_CODE_LINK_SENSED 139 
#define  MACREG_INT_CODE_MAX_FAIL 138 
#define  MACREG_INT_CODE_MESH_AUTO_STARTED 137 
#define  MACREG_INT_CODE_MIB_CHANGED 136 
#define  MACREG_INT_CODE_MIC_ERR_MULTICAST 135 
#define  MACREG_INT_CODE_MIC_ERR_UNICAST 134 
#define  MACREG_INT_CODE_PS_AWAKE 133 
#define  MACREG_INT_CODE_PS_SLEEP 132 
#define  MACREG_INT_CODE_RSSI_HIGH 131 
#define  MACREG_INT_CODE_RSSI_LOW 130 
#define  MACREG_INT_CODE_SNR_HIGH 129 
#define  MACREG_INT_CODE_SNR_LOW 128 
 int /*<<< orphan*/  PS_STATE_AWAKE ; 
 int /*<<< orphan*/  PS_STATE_FULL_POWER ; 
 int /*<<< orphan*/  PS_STATE_PRE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct lbs_private *priv, u32 event)
{
	int ret = 0;

	FUNC2(LBS_DEB_CMD);

	switch (event) {
	case MACREG_INT_CODE_LINK_SENSED:
		FUNC1("EVENT: link sensed\n");
		break;

	case MACREG_INT_CODE_DEAUTHENTICATED:
		FUNC1("EVENT: deauthenticated\n");
		FUNC4(priv);
		break;

	case MACREG_INT_CODE_DISASSOCIATED:
		FUNC1("EVENT: disassociated\n");
		FUNC4(priv);
		break;

	case MACREG_INT_CODE_LINK_LOST_NO_SCAN:
		FUNC1("EVENT: link lost\n");
		FUNC4(priv);
		break;

	case MACREG_INT_CODE_PS_SLEEP:
		FUNC1("EVENT: ps sleep\n");

		/* handle unexpected PS SLEEP event */
		if (priv->psstate == PS_STATE_FULL_POWER) {
			FUNC1(
			       "EVENT: in FULL POWER mode, ignoreing PS_SLEEP\n");
			break;
		}
		priv->psstate = PS_STATE_PRE_SLEEP;

		FUNC7(priv);

		break;

	case MACREG_INT_CODE_HOST_AWAKE:
		FUNC1("EVENT: host awake\n");
		FUNC9(priv);
		break;

	case MACREG_INT_CODE_PS_AWAKE:
		FUNC1("EVENT: ps awake\n");
		/* handle unexpected PS AWAKE event */
		if (priv->psstate == PS_STATE_FULL_POWER) {
			FUNC1(
			       "EVENT: In FULL POWER mode - ignore PS AWAKE\n");
			break;
		}

		priv->psstate = PS_STATE_AWAKE;

		if (priv->needtowakeup) {
			/*
			 * wait for the command processing to finish
			 * before resuming sending
			 * priv->needtowakeup will be set to FALSE
			 * in lbs_ps_wakeup()
			 */
			FUNC1("waking up ...\n");
			FUNC8(priv, 0);
		}
		break;

	case MACREG_INT_CODE_MIC_ERR_UNICAST:
		FUNC1("EVENT: UNICAST MIC ERROR\n");
		FUNC0(priv, MACREG_INT_CODE_MIC_ERR_UNICAST);
		break;

	case MACREG_INT_CODE_MIC_ERR_MULTICAST:
		FUNC1("EVENT: MULTICAST MIC ERROR\n");
		FUNC0(priv, MACREG_INT_CODE_MIC_ERR_MULTICAST);
		break;

	case MACREG_INT_CODE_MIB_CHANGED:
		FUNC1("EVENT: MIB CHANGED\n");
		break;
	case MACREG_INT_CODE_INIT_DONE:
		FUNC1("EVENT: INIT DONE\n");
		break;
	case MACREG_INT_CODE_ADHOC_BCN_LOST:
		FUNC1("EVENT: ADHOC beacon lost\n");
		break;
	case MACREG_INT_CODE_RSSI_LOW:
		FUNC5("EVENT: rssi low\n");
		break;
	case MACREG_INT_CODE_SNR_LOW:
		FUNC5("EVENT: snr low\n");
		break;
	case MACREG_INT_CODE_MAX_FAIL:
		FUNC5("EVENT: max fail\n");
		break;
	case MACREG_INT_CODE_RSSI_HIGH:
		FUNC5("EVENT: rssi high\n");
		break;
	case MACREG_INT_CODE_SNR_HIGH:
		FUNC5("EVENT: snr high\n");
		break;

	case MACREG_INT_CODE_MESH_AUTO_STARTED:
		/* Ignore spurious autostart events if autostart is disabled */
		if (!priv->mesh_autostart_enabled) {
			FUNC6("EVENT: MESH_AUTO_STARTED (ignoring)\n");
			break;
		}
		FUNC6("EVENT: MESH_AUTO_STARTED\n");
		priv->mesh_connect_status = LBS_CONNECTED;
		if (priv->mesh_open) {
			FUNC10(priv->mesh_dev);
			if (!priv->tx_pending_len)
				FUNC11(priv->mesh_dev);
		}
		priv->mode = IW_MODE_ADHOC;
		FUNC12(&priv->sync_channel);
		break;

	default:
		FUNC5("EVENT: unknown event id %d\n", event);
		break;
	}

	FUNC3(LBS_DEB_CMD, "ret %d", ret);
	return ret;
}