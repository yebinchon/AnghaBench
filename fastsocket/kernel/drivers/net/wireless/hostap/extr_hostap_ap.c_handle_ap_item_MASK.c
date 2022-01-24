#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ieee80211_hdr {int addr1; int addr3; int /*<<< orphan*/  frame_control; } ;
struct hostap_80211_rx_status {int dummy; } ;
struct TYPE_13__ {scalar_t__ hostapd; TYPE_1__* ap; struct net_device* dev; } ;
typedef  TYPE_2__ local_info_t ;
struct TYPE_12__ {scalar_t__ nullfunc_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FCTL_STYPE ; 
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_CTL ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_FTYPE_MGMT ; 
#define  IEEE80211_STYPE_ASSOC_REQ 135 
#define  IEEE80211_STYPE_ASSOC_RESP 134 
#define  IEEE80211_STYPE_ATIM 133 
#define  IEEE80211_STYPE_AUTH 132 
 int IEEE80211_STYPE_BEACON ; 
#define  IEEE80211_STYPE_DEAUTH 131 
#define  IEEE80211_STYPE_DISASSOC 130 
 int IEEE80211_STYPE_NULLFUNC ; 
 int IEEE80211_STYPE_PSPOLL ; 
#define  IEEE80211_STYPE_REASSOC_REQ 129 
#define  IEEE80211_STYPE_REASSOC_RESP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct sk_buff*,struct hostap_80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct ieee80211_hdr*,struct hostap_80211_rx_status*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(local_info_t *local, struct sk_buff *skb,
			   struct hostap_80211_rx_status *rx_stats)
{
#ifndef PRISM2_NO_KERNEL_IEEE80211_MGMT
	struct net_device *dev = local->dev;
#endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */
	u16 fc, type, stype;
	struct ieee80211_hdr *hdr;

	/* FIX: should give skb->len to handler functions and check that the
	 * buffer is long enough */
	hdr = (struct ieee80211_hdr *) skb->data;
	fc = FUNC10(hdr->frame_control);
	type = fc & IEEE80211_FCTL_FTYPE;
	stype = fc & IEEE80211_FCTL_STYPE;

#ifndef PRISM2_NO_KERNEL_IEEE80211_MGMT
	if (!local->hostapd && type == IEEE80211_FTYPE_DATA) {
		FUNC0(DEBUG_AP, "handle_ap_item - data frame\n");

		if (!(fc & IEEE80211_FCTL_TODS) ||
		    (fc & IEEE80211_FCTL_FROMDS)) {
			if (stype == IEEE80211_STYPE_NULLFUNC) {
				/* no ToDS nullfunc seems to be used to check
				 * AP association; so send reject message to
				 * speed up re-association */
				FUNC2(local, hdr);
				goto done;
			}
			FUNC0(DEBUG_AP, "   not ToDS frame (fc=0x%04x)\n",
			       fc);
			goto done;
		}

		if (FUNC11(hdr->addr1, dev->dev_addr, ETH_ALEN)) {
			FUNC0(DEBUG_AP, "handle_ap_item - addr1(BSSID)=%pM"
			       " not own MAC\n", hdr->addr1);
			goto done;
		}

		if (local->ap->nullfunc_ack &&
		    stype == IEEE80211_STYPE_NULLFUNC)
			FUNC1(local, hdr);
		else
			FUNC2(local, hdr);
		goto done;
	}

	if (type == IEEE80211_FTYPE_MGMT && stype == IEEE80211_STYPE_BEACON) {
		FUNC6(local, skb, rx_stats);
		goto done;
	}
#endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */

	if (type == IEEE80211_FTYPE_CTL && stype == IEEE80211_STYPE_PSPOLL) {
		FUNC9(local, hdr, rx_stats);
		goto done;
	}

	if (local->hostapd) {
		FUNC0(DEBUG_AP, "Unknown frame in AP queue: type=0x%02x "
		       "subtype=0x%02x\n", type, stype);
		goto done;
	}

#ifndef PRISM2_NO_KERNEL_IEEE80211_MGMT
	if (type != IEEE80211_FTYPE_MGMT) {
		FUNC0(DEBUG_AP, "handle_ap_item - not a management frame?\n");
		goto done;
	}

	if (FUNC11(hdr->addr1, dev->dev_addr, ETH_ALEN)) {
		FUNC0(DEBUG_AP, "handle_ap_item - addr1(DA)=%pM"
		       " not own MAC\n", hdr->addr1);
		goto done;
	}

	if (FUNC11(hdr->addr3, dev->dev_addr, ETH_ALEN)) {
		FUNC0(DEBUG_AP, "handle_ap_item - addr3(BSSID)=%pM"
		       " not own MAC\n", hdr->addr3);
		goto done;
	}

	switch (stype) {
	case IEEE80211_STYPE_ASSOC_REQ:
		FUNC4(local, skb, rx_stats, 0);
		break;
	case IEEE80211_STYPE_ASSOC_RESP:
		FUNC0(DEBUG_AP, "==> ASSOC RESP (ignored)\n");
		break;
	case IEEE80211_STYPE_REASSOC_REQ:
		FUNC4(local, skb, rx_stats, 1);
		break;
	case IEEE80211_STYPE_REASSOC_RESP:
		FUNC0(DEBUG_AP, "==> REASSOC RESP (ignored)\n");
		break;
	case IEEE80211_STYPE_ATIM:
		FUNC0(DEBUG_AP, "==> ATIM (ignored)\n");
		break;
	case IEEE80211_STYPE_DISASSOC:
		FUNC8(local, skb, rx_stats);
		break;
	case IEEE80211_STYPE_AUTH:
		FUNC5(local, skb, rx_stats);
		break;
	case IEEE80211_STYPE_DEAUTH:
		FUNC7(local, skb, rx_stats);
		break;
	default:
		FUNC0(DEBUG_AP, "Unknown mgmt frame subtype 0x%02x\n",
		       stype >> 4);
		break;
	}
#endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */

 done:
	FUNC3(skb);
}