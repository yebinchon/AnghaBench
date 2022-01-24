#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zd_mac {int /*<<< orphan*/  chip; int /*<<< orphan*/  hw; } ;
struct zd_ctrlset {scalar_t__ next_frame_length; void* current_length; void* tx_length; int /*<<< orphan*/  modulation; scalar_t__ service; void* packet_length; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_rate {int /*<<< orphan*/  hw_value_short; int /*<<< orphan*/  hw_value; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 unsigned int FCS_LEN ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_mac*,struct zd_ctrlset*,struct ieee80211_hdr*,struct ieee80211_tx_info*) ; 
 struct ieee80211_rate* FUNC5 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct zd_mac *mac,
			struct sk_buff *skb)
{
	int r;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	unsigned int frag_len = skb->len + FCS_LEN;
	unsigned int packet_length;
	struct ieee80211_rate *txrate;
	struct zd_ctrlset *cs = (struct zd_ctrlset *)
		FUNC7(skb, sizeof(struct zd_ctrlset));
	struct ieee80211_tx_info *info = FUNC0(skb);

	FUNC1(frag_len <= 0xffff);

	txrate = FUNC5(mac->hw, info);

	cs->modulation = txrate->hw_value;
	if (info->control.rates[0].flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
		cs->modulation = txrate->hw_value_short;

	cs->tx_length = FUNC3(frag_len);

	FUNC4(mac, cs, hdr, info);

	packet_length = frag_len + sizeof(struct zd_ctrlset) + 10;
	FUNC1(packet_length <= 0xffff);
	/* ZD1211B: Computing the length difference this way, gives us
	 * flexibility to compute the packet length.
	 */
	cs->packet_length = FUNC3(FUNC9(&mac->chip) ?
			packet_length - frag_len : packet_length);

	/*
	 * CURRENT LENGTH:
	 * - transmit frame length in microseconds
	 * - seems to be derived from frame length
	 * - see Cal_Us_Service() in zdinlinef.h
	 * - if macp->bTxBurstEnable is enabled, then multiply by 4
	 *  - bTxBurstEnable is never set in the vendor driver
	 *
	 * SERVICE:
	 * - "for PLCP configuration"
	 * - always 0 except in some situations at 802.11b 11M
	 * - see line 53 of zdinlinef.h
	 */
	cs->service = 0;
	r = FUNC8(&cs->service, FUNC2(cs->modulation),
		                 FUNC6(cs->tx_length));
	if (r < 0)
		return r;
	cs->current_length = FUNC3(r);
	cs->next_frame_length = 0;

	return 0;
}