#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tx_beacon_header {int /*<<< orphan*/  vif_index; int /*<<< orphan*/  epid; int /*<<< orphan*/  type; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_6__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int seq_no; int /*<<< orphan*/  index; int /*<<< orphan*/  tsfadjust; } ;
struct ath9k_htc_tx_ctl {int /*<<< orphan*/  vif_index; int /*<<< orphan*/  epid; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {struct ieee80211_vif** bslot; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  htc; int /*<<< orphan*/  beacon_ep; int /*<<< orphan*/  hw; int /*<<< orphan*/  op_flags; TYPE_1__ cur_beacon_conf; int /*<<< orphan*/  ah; } ;
typedef  int /*<<< orphan*/  beacon_hdr ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_HTC_BEACON ; 
 int /*<<< orphan*/  BSTUCK ; 
 int ENOMEM ; 
 struct tx_beacon_header* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_SCTL_FRAG ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int /*<<< orphan*/  OP_SCANNING ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tx_beacon_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct ath9k_htc_priv *priv,
				  int slot)
{
	struct ath_common *common = FUNC2(priv->ah);
	struct ieee80211_vif *vif;
	struct ath9k_htc_vif *avp;
	struct tx_beacon_header beacon_hdr;
	struct ath9k_htc_tx_ctl *tx_ctl;
	struct ieee80211_tx_info *info;
	struct ieee80211_mgmt *mgmt;
	struct sk_buff *beacon;
	u8 *tx_fhdr;
	int ret;

	FUNC9(&beacon_hdr, 0, sizeof(struct tx_beacon_header));

	FUNC11(&priv->beacon_lock);

	vif = priv->cur_beacon_conf.bslot[slot];
	avp = (struct ath9k_htc_vif *)vif->drv_priv;

	if (FUNC14(FUNC13(OP_SCANNING, &priv->op_flags))) {
		FUNC12(&priv->beacon_lock);
		return;
	}

	/* Get a new beacon */
	beacon = FUNC7(priv->hw, vif);
	if (!beacon) {
		FUNC12(&priv->beacon_lock);
		return;
	}

	/*
	 * Update the TSF adjust value here, the HW will
	 * add this value for every beacon.
	 */
	mgmt = (struct ieee80211_mgmt *)beacon->data;
	mgmt->u.beacon.timestamp = avp->tsfadjust;

	info = FUNC1(beacon);
	if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ) {
		struct ieee80211_hdr *hdr =
			(struct ieee80211_hdr *) beacon->data;
		avp->seq_no += 0x10;
		hdr->seq_ctrl &= FUNC4(IEEE80211_SCTL_FRAG);
		hdr->seq_ctrl |= FUNC4(avp->seq_no);
	}

	tx_ctl = FUNC0(beacon);
	FUNC9(tx_ctl, 0, sizeof(*tx_ctl));

	tx_ctl->type = ATH9K_HTC_BEACON;
	tx_ctl->epid = priv->beacon_ep;

	beacon_hdr.vif_index = avp->index;
	tx_fhdr = FUNC10(beacon, sizeof(beacon_hdr));
	FUNC8(tx_fhdr, (u8 *) &beacon_hdr, sizeof(beacon_hdr));

	ret = FUNC6(priv->htc, beacon);
	if (ret != 0) {
		if (ret == -ENOMEM) {
			FUNC3(common, BSTUCK,
				"Failed to send beacon, no free TX buffer\n");
		}
		FUNC5(beacon);
	}

	FUNC12(&priv->beacon_lock);
}