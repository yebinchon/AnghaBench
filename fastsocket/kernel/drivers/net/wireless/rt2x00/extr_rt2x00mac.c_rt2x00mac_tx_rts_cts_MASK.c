#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  cb; } ;
struct rt2x00_dev {TYPE_3__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  vif; TYPE_1__* rates; int /*<<< orphan*/ * hw_key; } ;
struct ieee80211_tx_info {TYPE_2__ control; int /*<<< orphan*/  flags; } ;
struct ieee80211_rts {int dummy; } ;
struct ieee80211_cts {int dummy; } ;
struct data_queue {int dummy; } ;
struct TYPE_7__ {scalar_t__ extra_tx_headroom; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_RC_USE_CTS_PROTECT ; 
 int IEEE80211_TX_RC_USE_RTS_CTS ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,unsigned int,struct ieee80211_tx_info*,struct ieee80211_cts*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,unsigned int,struct ieee80211_tx_info*,struct ieee80211_rts*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,char*) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,struct sk_buff*) ; 
 int FUNC8 (struct data_queue*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct rt2x00_dev *rt2x00dev,
				struct data_queue *queue,
				struct sk_buff *frag_skb)
{
	struct ieee80211_tx_info *tx_info = FUNC0(frag_skb);
	struct ieee80211_tx_info *rts_info;
	struct sk_buff *skb;
	unsigned int data_length;
	int retval = 0;

	if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
		data_length = sizeof(struct ieee80211_cts);
	else
		data_length = sizeof(struct ieee80211_rts);

	skb = FUNC1(data_length + rt2x00dev->hw->extra_tx_headroom);
	if (FUNC11(!skb)) {
		FUNC6(rt2x00dev, "Failed to create RTS/CTS frame\n");
		return -ENOMEM;
	}

	FUNC10(skb, rt2x00dev->hw->extra_tx_headroom);
	FUNC9(skb, data_length);

	/*
	 * Copy TX information over from original frame to
	 * RTS/CTS frame. Note that we set the no encryption flag
	 * since we don't want this frame to be encrypted.
	 * RTS frames should be acked, while CTS-to-self frames
	 * should not. The ready for TX flag is cleared to prevent
	 * it being automatically send when the descriptor is
	 * written to the hardware.
	 */
	FUNC5(skb->cb, frag_skb->cb, sizeof(skb->cb));
	rts_info = FUNC0(skb);
	rts_info->control.rates[0].flags &= ~IEEE80211_TX_RC_USE_RTS_CTS;
	rts_info->control.rates[0].flags &= ~IEEE80211_TX_RC_USE_CTS_PROTECT;

	if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
		rts_info->flags |= IEEE80211_TX_CTL_NO_ACK;
	else
		rts_info->flags &= ~IEEE80211_TX_CTL_NO_ACK;

	/* Disable hardware encryption */
	rts_info->control.hw_key = NULL;

	/*
	 * RTS/CTS frame should use the length of the frame plus any
	 * encryption overhead that will be added by the hardware.
	 */
	data_length += FUNC7(rt2x00dev, skb);

	if (tx_info->control.rates[0].flags & IEEE80211_TX_RC_USE_CTS_PROTECT)
		FUNC3(rt2x00dev->hw, tx_info->control.vif,
					frag_skb->data, data_length, tx_info,
					(struct ieee80211_cts *)(skb->data));
	else
		FUNC4(rt2x00dev->hw, tx_info->control.vif,
				  frag_skb->data, data_length, tx_info,
				  (struct ieee80211_rts *)(skb->data));

	retval = FUNC8(queue, skb, true);
	if (retval) {
		FUNC2(skb);
		FUNC6(rt2x00dev, "Failed to send RTS/CTS frame\n");
	}

	return retval;
}