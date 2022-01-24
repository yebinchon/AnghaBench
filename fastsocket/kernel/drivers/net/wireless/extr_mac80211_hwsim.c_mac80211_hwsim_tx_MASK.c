#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mac80211_hwsim_data {struct ieee80211_channel* tmp_chan; scalar_t__ idle; struct ieee80211_channel* channel; } ;
struct TYPE_8__ {TYPE_4__* rates; TYPE_3__* vif; } ;
struct ieee80211_tx_info {int hw_queue; int flags; TYPE_2__ control; struct ieee80211_channel** rate_driver_data; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_7__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_1__ def; } ;
struct TYPE_10__ {int count; int idx; } ;
struct TYPE_9__ {int /*<<< orphan*/  chanctx_conf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 struct ieee80211_tx_info* FUNC2 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int channels ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,struct sk_buff*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 void FUNC13 (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ; 
 int FUNC14 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 scalar_t__ rctbl ; 
 struct ieee80211_chanctx_conf* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wmediumd_portid ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw,
			      struct ieee80211_tx_control *control,
			      struct sk_buff *skb)
{
	struct mac80211_hwsim_data *data = hw->priv;
	struct ieee80211_tx_info *txi = FUNC2(skb);
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *channel;
	bool ack;
	u32 _portid;

	if (FUNC4(skb->len < 10)) {
		/* Should not happen; just a sanity check for addr1 use */
		FUNC5(skb);
		return;
	}

	if (channels == 1) {
		channel = data->channel;
	} else if (txi->hw_queue == 4) {
		channel = data->tmp_chan;
	} else {
		chanctx_conf = FUNC15(txi->control.vif->chanctx_conf);
		if (chanctx_conf)
			channel = chanctx_conf->def.chan;
		else
			channel = NULL;
	}

	if (FUNC3(!channel, "TX w/o channel - queue = %d\n", txi->hw_queue)) {
		FUNC5(skb);
		return;
	}

	if (data->idle && !data->tmp_chan) {
		FUNC16(hw->wiphy, "Trying to TX when idle - reject\n");
		FUNC5(skb);
		return;
	}

	if (txi->control.vif)
		FUNC6(txi->control.vif);
	if (control->sta)
		FUNC7(control->sta);

	if (rctbl)
		FUNC8(txi->control.vif, control->sta, skb,
				       txi->control.rates,
				       FUNC1(txi->control.rates));

	txi->rate_driver_data[0] = channel;
	FUNC12(hw, skb, channel);

	/* wmediumd mode check */
	_portid = FUNC0(wmediumd_portid);

	if (_portid)
		return FUNC13(hw, skb, _portid);

	/* NO wmediumd detected, perfect medium simulation */
	ack = FUNC14(hw, skb, channel);

	if (ack && skb->len >= 16) {
		struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
		FUNC11(channel, hdr->addr2);
	}

	FUNC9(txi);

	/* frame was transmitted at most favorable rate at first attempt */
	txi->control.rates[0].count = 1;
	txi->control.rates[1].idx = -1;

	if (!(txi->flags & IEEE80211_TX_CTL_NO_ACK) && ack)
		txi->flags |= IEEE80211_TX_STAT_ACK;
	FUNC10(hw, skb);
}