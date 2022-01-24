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
struct sk_buff {int len; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct hostap_interface {TYPE_3__* local; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_7__ {TYPE_1__* ap; } ;
typedef  TYPE_3__ local_info_t ;
struct TYPE_5__ {scalar_t__ ap_policy; } ;

/* Variables and functions */
 scalar_t__ AP_OTHER_AP_SKIP_ALL ; 
 int /*<<< orphan*/  ETH_P_HOSTAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct sk_buff*,struct hostap_80211_rx_status*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct hostap_interface* FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev, struct sk_buff *skb,
	       struct hostap_80211_rx_status *rx_stats)
{
	struct hostap_interface *iface;
	local_info_t *local;
	struct ieee80211_hdr *hdr;

	iface = FUNC4(dev);
	local = iface->local;

	if (skb->len < 16)
		goto drop;

	dev->stats.rx_packets++;

	hdr = (struct ieee80211_hdr *) skb->data;

	if (local->ap->ap_policy == AP_OTHER_AP_SKIP_ALL &&
	    FUNC3(hdr->frame_control))
		goto drop;

	skb->protocol = FUNC0(ETH_P_HOSTAP);
	FUNC2(local, skb, rx_stats);
	return;

 drop:
	FUNC1(skb);
}