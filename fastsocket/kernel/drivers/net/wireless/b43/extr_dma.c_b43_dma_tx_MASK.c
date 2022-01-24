#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {struct b43_dmaring* tx_ring_mcast; } ;
struct b43_wldev {TYPE_2__* wl; TYPE_1__ dma; } ;
struct b43_dmaring {int stopped; int /*<<< orphan*/  index; void* queue_prio; int /*<<< orphan*/  tx; } ;
struct TYPE_5__ {int* tx_queue_stopped; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_DBG_DMAVERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOKEY ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREDATA ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 scalar_t__ TX_SLOTS_PER_FRAME ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct b43_dmaring*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct b43_dmaring*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 struct b43_dmaring* FUNC11 (struct b43_wldev*,void*) ; 
 scalar_t__ FUNC12 (struct b43_dmaring*) ; 
 void* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct b43_wldev *dev, struct sk_buff *skb)
{
	struct b43_dmaring *ring;
	struct ieee80211_hdr *hdr;
	int err = 0;
	struct ieee80211_tx_info *info = FUNC1(skb);

	hdr = (struct ieee80211_hdr *)skb->data;
	if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
		/* The multicast ring will be sent after the DTIM */
		ring = dev->dma.tx_ring_mcast;
		/* Set the more-data bit. Ucode will clear it on
		 * the last frame for us. */
		hdr->frame_control |= FUNC6(IEEE80211_FCTL_MOREDATA);
	} else {
		/* Decide by priority where to put this frame. */
		ring = FUNC11(
			dev, FUNC13(skb));
	}

	FUNC0(!ring->tx);

	if (FUNC14(ring->stopped)) {
		/* We get here only because of a bug in mac80211.
		 * Because of a race, one packet may be queued after
		 * the queue is stopped, thus we got called when we shouldn't.
		 * For now, just refuse the transmit. */
		if (FUNC3(dev, B43_DBG_DMAVERBOSE))
			FUNC5(dev->wl, "Packet after queue stopped\n");
		err = -ENOSPC;
		goto out;
	}

	if (FUNC14(FUNC2(FUNC8(ring) < TX_SLOTS_PER_FRAME))) {
		/* If we get here, we have a real error with the queue
		 * full, but queues not stopped. */
		FUNC5(dev->wl, "DMA queue overflow\n");
		err = -ENOSPC;
		goto out;
	}

	/* Assign the queue number to the ring (if not already done before)
	 * so TX status handling can use it. The queue to ring mapping is
	 * static, so we don't need to store it per frame. */
	ring->queue_prio = FUNC13(skb);

	err = FUNC7(ring, skb);
	if (FUNC14(err == -ENOKEY)) {
		/* Drop this packet, as we don't have the encryption key
		 * anymore and must not transmit it unencrypted. */
		FUNC9(dev->wl->hw, skb);
		err = 0;
		goto out;
	}
	if (FUNC14(err)) {
		FUNC5(dev->wl, "DMA tx mapping failure\n");
		goto out;
	}
	if ((FUNC8(ring) < TX_SLOTS_PER_FRAME) ||
	    FUNC12(ring)) {
		/* This TX ring is full. */
		unsigned int skb_mapping = FUNC13(skb);
		FUNC10(dev->wl->hw, skb_mapping);
		dev->wl->tx_queue_stopped[skb_mapping] = 1;
		ring->stopped = true;
		if (FUNC3(dev, B43_DBG_DMAVERBOSE)) {
			FUNC4(dev->wl, "Stopped TX ring %d\n", ring->index);
		}
	}
out:

	return err;
}