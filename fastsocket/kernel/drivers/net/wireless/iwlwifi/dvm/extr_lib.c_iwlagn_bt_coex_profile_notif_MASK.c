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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ bt_enable_flag; scalar_t__ last_bt_traffic_load; scalar_t__ bt_traffic_load; scalar_t__ iw_mode; scalar_t__ bt_status; scalar_t__ bt_ci_compliance; int /*<<< orphan*/  bt_runtime_config; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  bt_traffic_change_work; int /*<<< orphan*/  bt_ch_announce; int /*<<< orphan*/  bt_is_sco; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_bt_uart_msg {int dummy; } ;
struct iwl_bt_coex_profile_notif {scalar_t__ bt_status; scalar_t__ bt_traffic_load; scalar_t__ bt_ci_compliance; struct iwl_bt_uart_msg last_bt_uart_msg; } ;

/* Variables and functions */
 scalar_t__ IWLAGN_BT_FLAG_COEX_MODE_DISABLED ; 
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ; 
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_bt_uart_msg*) ; 
 scalar_t__ FUNC2 (struct iwl_priv*,struct iwl_bt_uart_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct iwl_bt_uart_msg*) ; 
 scalar_t__ FUNC4 (struct iwl_priv*,struct iwl_bt_uart_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iwl_rx_packet* FUNC6 (struct iwl_rx_cmd_buffer*) ; 

int FUNC7(struct iwl_priv *priv,
				  struct iwl_rx_cmd_buffer *rxb,
				  struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC6(rxb);
	struct iwl_bt_coex_profile_notif *coex = (void *)pkt->data;
	struct iwl_bt_uart_msg *uart_msg = &coex->last_bt_uart_msg;

	if (priv->bt_enable_flag == IWLAGN_BT_FLAG_COEX_MODE_DISABLED) {
		/* bt coex disabled */
		return 0;
	}

	FUNC0(priv, "BT Coex notification:\n");
	FUNC0(priv, "    status: %d\n", coex->bt_status);
	FUNC0(priv, "    traffic load: %d\n", coex->bt_traffic_load);
	FUNC0(priv, "    CI compliance: %d\n",
			coex->bt_ci_compliance);
	FUNC3(priv, uart_msg);

	priv->last_bt_traffic_load = priv->bt_traffic_load;
	priv->bt_is_sco = FUNC1(uart_msg);

	if (priv->iw_mode != NL80211_IFTYPE_ADHOC) {
		if (priv->bt_status != coex->bt_status ||
		    priv->last_bt_traffic_load != coex->bt_traffic_load) {
			if (coex->bt_status) {
				/* BT on */
				if (!priv->bt_ch_announce)
					priv->bt_traffic_load =
						IWL_BT_COEX_TRAFFIC_LOAD_HIGH;
				else
					priv->bt_traffic_load =
						coex->bt_traffic_load;
			} else {
				/* BT off */
				priv->bt_traffic_load =
					IWL_BT_COEX_TRAFFIC_LOAD_NONE;
			}
			priv->bt_status = coex->bt_status;
			FUNC5(priv->workqueue,
				   &priv->bt_traffic_change_work);
		}
	}

	/* schedule to send runtime bt_config */
	/* check reduce power before change ack/cts kill mask */
	if (FUNC2(priv, uart_msg) ||
	    FUNC4(priv, uart_msg))
		FUNC5(priv->workqueue, &priv->bt_runtime_config);


	/* FIXME: based on notification, adjust the prio_boost */

	priv->bt_ci_compliance = coex->bt_ci_compliance;
	return 0;
}