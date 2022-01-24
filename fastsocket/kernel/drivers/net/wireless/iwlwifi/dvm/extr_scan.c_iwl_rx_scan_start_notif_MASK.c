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
struct iwl_scanstart_notification {int /*<<< orphan*/  beacon_timer; int /*<<< orphan*/  status; int /*<<< orphan*/  tsf_low; int /*<<< orphan*/  tsf_high; scalar_t__ band; int /*<<< orphan*/  channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ scan_type; int hw_roc_start_notified; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_start_tsf; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_SCAN_ROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
				    struct iwl_rx_cmd_buffer *rxb,
				    struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_scanstart_notification *notif = (void *)pkt->data;

	priv->scan_start_tsf = FUNC2(notif->tsf_low);
	FUNC0(priv, "Scan start: "
		       "%d [802.11%s] "
		       "(TSF: 0x%08X:%08X) - %d (beacon timer %u)\n",
		       notif->channel,
		       notif->band ? "bg" : "a",
		       FUNC2(notif->tsf_high),
		       FUNC2(notif->tsf_low),
		       notif->status, notif->beacon_timer);

	if (priv->scan_type == IWL_SCAN_ROC &&
	    !priv->hw_roc_start_notified) {
		FUNC1(priv->hw);
		priv->hw_roc_start_notified = true;
	}

	return 0;
}