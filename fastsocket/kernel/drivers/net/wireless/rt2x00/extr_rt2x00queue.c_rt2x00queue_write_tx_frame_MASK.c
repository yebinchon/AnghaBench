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
typedef  void* u8 ;
struct txentry_desc {int /*<<< orphan*/  header_length; int /*<<< orphan*/  flags; } ;
struct skb_frame_desc {struct queue_entry* entry; int /*<<< orphan*/  flags; void* tx_rate_flags; void* tx_rate_idx; } ;
struct sk_buff {int dummy; } ;
struct queue_entry {int /*<<< orphan*/  flags; struct sk_buff* skb; } ;
struct TYPE_6__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct data_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  qid; TYPE_3__* rt2x00dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  cap_flags; } ;
struct TYPE_5__ {void* flags; void* idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_PROJECT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ENTRY_DATA_PENDING ; 
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT_IV ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  Q_INDEX ; 
 int /*<<< orphan*/  REQUIRE_COPY_IV ; 
 int /*<<< orphan*/  REQUIRE_DMA ; 
 int /*<<< orphan*/  REQUIRE_L2PAD ; 
 int /*<<< orphan*/  SKBDESC_NOT_MAC80211 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct skb_frame_desc* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct skb_frame_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct sk_buff*,struct txentry_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct data_queue*) ; 
 struct queue_entry* FUNC11 (struct data_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct data_queue*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct queue_entry*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct queue_entry*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 

int FUNC23(struct data_queue *queue, struct sk_buff *skb,
			       bool local)
{
	struct ieee80211_tx_info *tx_info;
	struct queue_entry *entry;
	struct txentry_desc txdesc;
	struct skb_frame_desc *skbdesc;
	u8 rate_idx, rate_flags;
	int ret = 0;

	/*
	 * Copy all TX descriptor information into txdesc,
	 * after that we are free to use the skb->cb array
	 * for our information.
	 */
	FUNC9(queue->rt2x00dev, skb, &txdesc, NULL);

	/*
	 * All information is retrieved from the skb->cb array,
	 * now we should claim ownership of the driver part of that
	 * array, preserving the bitrate index and flags.
	 */
	tx_info = FUNC0(skb);
	rate_idx = tx_info->control.rates[0].idx;
	rate_flags = tx_info->control.rates[0].flags;
	skbdesc = FUNC2(skb);
	FUNC3(skbdesc, 0, sizeof(*skbdesc));
	skbdesc->tx_rate_idx = rate_idx;
	skbdesc->tx_rate_flags = rate_flags;

	if (local)
		skbdesc->flags |= SKBDESC_NOT_MAC80211;

	/*
	 * When hardware encryption is supported, and this frame
	 * is to be encrypted, we should strip the IV/EIV data from
	 * the frame so we can provide it to the driver separately.
	 */
	if (FUNC21(ENTRY_TXD_ENCRYPT, &txdesc.flags) &&
	    !FUNC21(ENTRY_TXD_ENCRYPT_IV, &txdesc.flags)) {
		if (FUNC21(REQUIRE_COPY_IV, &queue->rt2x00dev->cap_flags))
			FUNC5(skb, &txdesc);
		else
			FUNC6(skb, &txdesc);
	}

	/*
	 * When DMA allocation is required we should guarantee to the
	 * driver that the DMA is aligned to a 4-byte boundary.
	 * However some drivers require L2 padding to pad the payload
	 * rather then the header. This could be a requirement for
	 * PCI and USB devices, while header alignment only is valid
	 * for PCI devices.
	 */
	if (FUNC21(REQUIRE_L2PAD, &queue->rt2x00dev->cap_flags))
		FUNC13(skb, txdesc.header_length);
	else if (FUNC21(REQUIRE_DMA, &queue->rt2x00dev->cap_flags))
		FUNC7(skb);

	/*
	 * That function must be called with bh disabled.
	 */
	FUNC18(&queue->tx_lock);

	if (FUNC22(FUNC10(queue))) {
		FUNC4(queue->rt2x00dev, "Dropping frame due to full tx queue %d\n",
			   queue->qid);
		ret = -ENOBUFS;
		goto out;
	}

	entry = FUNC11(queue, Q_INDEX);

	if (FUNC22(FUNC20(ENTRY_OWNER_DEVICE_DATA,
				      &entry->flags))) {
		FUNC4(queue->rt2x00dev,
			   "Arrived at non-free entry in the non-full queue %d\n"
			   "Please file bug report to %s\n",
			   queue->qid, DRV_PROJECT);
		ret = -EINVAL;
		goto out;
	}

	skbdesc->entry = entry;
	entry->skb = skb;

	/*
	 * It could be possible that the queue was corrupted and this
	 * call failed. Since we always return NETDEV_TX_OK to mac80211,
	 * this frame will simply be dropped.
	 */
	if (FUNC22(FUNC15(entry, &txdesc))) {
		FUNC1(ENTRY_OWNER_DEVICE_DATA, &entry->flags);
		entry->skb = NULL;
		ret = -EIO;
		goto out;
	}

	/*
	 * Put BlockAckReqs into our check list for driver BA processing.
	 */
	FUNC8(entry);

	FUNC17(ENTRY_DATA_PENDING, &entry->flags);

	FUNC12(entry, Q_INDEX);
	FUNC16(entry, &txdesc);
	FUNC14(queue, &txdesc);

out:
	FUNC19(&queue->tx_lock);
	return ret;
}