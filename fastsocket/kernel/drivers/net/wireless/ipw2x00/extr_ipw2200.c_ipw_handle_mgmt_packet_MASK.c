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
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct libipw_rx_stats {int dummy; } ;
struct libipw_hdr_4addr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; int /*<<< orphan*/  frame_ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
struct ipw_rx_packet {TYPE_2__ u; } ;
struct ipw_rx_mem_buffer {struct sk_buff* skb; } ;
struct ipw_priv {int config; TYPE_3__* ieee; int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {scalar_t__ iw_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CFG_NET_STATS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_80211_STATS ; 
 scalar_t__ IEEE80211_STYPE_BEACON ; 
 scalar_t__ IEEE80211_STYPE_PROBE_RESP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IPW_RX_FRAME_SIZE ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct libipw_hdr_4addr*,struct libipw_rx_stats*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct libipw_rx_stats*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC14(struct ipw_priv *priv,
				   struct ipw_rx_mem_buffer *rxb,
				   struct libipw_rx_stats *stats)
{
	struct sk_buff *skb = rxb->skb;
	struct ipw_rx_packet *pkt = (struct ipw_rx_packet *)skb->data;
	struct libipw_hdr_4addr *header = (struct libipw_hdr_4addr *)
	    (skb->data + IPW_RX_FRAME_SIZE);

	FUNC5(priv->ieee, header, stats);

	if (priv->ieee->iw_mode == IW_MODE_ADHOC &&
	    ((FUNC1(FUNC4(header->frame_ctl)) ==
	      IEEE80211_STYPE_PROBE_RESP) ||
	     (FUNC1(FUNC4(header->frame_ctl)) ==
	      IEEE80211_STYPE_BEACON))) {
		if (!FUNC6(header->addr3, priv->bssid, ETH_ALEN))
			FUNC3(priv, header->addr2);
	}

	if (priv->config & CFG_NET_STATS) {
		FUNC0("sending stat packet\n");

		/* Set the size of the skb to the size of the full
		 * ipw header and 802.11 frame */
		FUNC12(skb, FUNC4(pkt->u.frame.length) +
			IPW_RX_FRAME_SIZE);

		/* Advance past the ipw packet header to the 802.11 frame */
		FUNC10(skb, IPW_RX_FRAME_SIZE);

		/* Push the libipw_rx_stats before the 802.11 frame */
		FUNC7(FUNC11(skb, sizeof(*stats)), stats, sizeof(*stats));

		skb->dev = priv->ieee->dev;

		/* Point raw at the libipw_stats */
		FUNC13(skb);

		skb->pkt_type = PACKET_OTHERHOST;
		skb->protocol = FUNC2(ETH_P_80211_STATS);
		FUNC8(skb->cb, 0, sizeof(rxb->skb->cb));
		FUNC9(skb);
		rxb->skb = NULL;
	}
}