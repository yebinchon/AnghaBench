#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {struct net_device* dev; scalar_t__ cb; } ;
struct net_device {int flags; char* dev_addr; int /*<<< orphan*/  name; } ;
struct ieee80211_hdr {int /*<<< orphan*/  tx_cb_idx; struct hostap_interface* iface; int /*<<< orphan*/  magic; int /*<<< orphan*/  frame_control; struct ieee80211_hdr* addr3; struct ieee80211_hdr* addr2; struct ieee80211_hdr* addr1; } ;
struct hostap_skb_tx_data {int /*<<< orphan*/  tx_cb_idx; struct hostap_interface* iface; int /*<<< orphan*/  magic; int /*<<< orphan*/  frame_control; struct hostap_skb_tx_data* addr3; struct hostap_skb_tx_data* addr2; struct hostap_skb_tx_data* addr1; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct net_device* dev; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  HOSTAP_SKB_TX_DATA_MAGIC ; 
 int /*<<< orphan*/  IEEE80211_FCTL_FROMDS ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hdr*,int /*<<< orphan*/ ,int) ; 
 struct hostap_interface* FUNC9 (struct net_device*) ; 
 struct ieee80211_hdr* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev,
			     u16 type_subtype, char *body,
			     int body_len, u8 *addr, u16 tx_cb_idx)
{
	struct hostap_interface *iface;
	local_info_t *local;
	struct ieee80211_hdr *hdr;
	u16 fc;
	struct sk_buff *skb;
	struct hostap_skb_tx_data *meta;
	int hdrlen;

	iface = FUNC9(dev);
	local = iface->local;
	dev = local->dev; /* always use master radio device */
	iface = FUNC9(dev);

	if (!(dev->flags & IFF_UP)) {
		FUNC0(DEBUG_AP, "%s: prism2_send_mgmt - device is not UP - "
		       "cannot send frame\n", dev->name);
		return;
	}

	skb = FUNC2(sizeof(*hdr) + body_len);
	if (skb == NULL) {
		FUNC0(DEBUG_AP, "%s: prism2_send_mgmt failed to allocate "
		       "skb\n", dev->name);
		return;
	}

	fc = type_subtype;
	hdrlen = FUNC4(FUNC1(type_subtype));
	hdr = (struct ieee80211_hdr *) FUNC10(skb, hdrlen);
	if (body)
		FUNC7(FUNC10(skb, body_len), body, body_len);

	FUNC8(hdr, 0, hdrlen);

	/* FIX: ctrl::ack sending used special HFA384X_TX_CTRL_802_11
	 * tx_control instead of using local->tx_control */


	FUNC7(hdr->addr1, addr, ETH_ALEN); /* DA / RA */
	if (FUNC6(hdr->frame_control)) {
		fc |= IEEE80211_FCTL_FROMDS;
		FUNC7(hdr->addr2, dev->dev_addr, ETH_ALEN); /* BSSID */
		FUNC7(hdr->addr3, dev->dev_addr, ETH_ALEN); /* SA */
	} else if (FUNC5(hdr->frame_control)) {
		/* control:ACK does not have addr2 or addr3 */
		FUNC8(hdr->addr2, 0, ETH_ALEN);
		FUNC8(hdr->addr3, 0, ETH_ALEN);
	} else {
		FUNC7(hdr->addr2, dev->dev_addr, ETH_ALEN); /* SA */
		FUNC7(hdr->addr3, dev->dev_addr, ETH_ALEN); /* BSSID */
	}

	hdr->frame_control = FUNC1(fc);

	meta = (struct hostap_skb_tx_data *) skb->cb;
	FUNC8(meta, 0, sizeof(*meta));
	meta->magic = HOSTAP_SKB_TX_DATA_MAGIC;
	meta->iface = iface;
	meta->tx_cb_idx = tx_cb_idx;

	skb->dev = dev;
	FUNC11(skb);
	FUNC12(skb);
	FUNC3(skb);
}