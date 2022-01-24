#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; int /*<<< orphan*/  entry_idx; TYPE_1__* queue; } ;
struct TYPE_7__ {unsigned int len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_FRAME_BEACON ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXD_DESC_SIZE ; 
 int /*<<< orphan*/  TXRX_CSR10 ; 
 int /*<<< orphan*/  TXRX_CSR9 ; 
 int /*<<< orphan*/  TXRX_CSR9_BEACON_GEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct queue_entry*,struct txentry_desc*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct queue_entry *entry,
				 struct txentry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	unsigned int beacon_base;
	unsigned int padding_len;
	u32 orig_reg, reg;

	/*
	 * Disable beaconing while we are reloading the beacon data,
	 * otherwise we might be sending out invalid data.
	 */
	FUNC8(rt2x00dev, TXRX_CSR9, &reg);
	orig_reg = reg;
	FUNC5(&reg, TXRX_CSR9_BEACON_GEN, 0);
	FUNC9(rt2x00dev, TXRX_CSR9, reg);

	/*
	 * Add space for the descriptor in front of the skb.
	 */
	FUNC12(entry->skb, TXD_DESC_SIZE);
	FUNC2(entry->skb->data, 0, TXD_DESC_SIZE);

	/*
	 * Write the TX descriptor for the beacon.
	 */
	FUNC10(entry, txdesc);

	/*
	 * Dump beacon to userspace through debugfs.
	 */
	FUNC6(rt2x00dev, DUMP_FRAME_BEACON, entry->skb);

	/*
	 * Write entire beacon with descriptor and padding to register.
	 */
	padding_len = FUNC3(entry->skb->len, 4) - entry->skb->len;
	if (padding_len && FUNC11(entry->skb, padding_len)) {
		FUNC4(rt2x00dev, "Failure padding beacon, aborting\n");
		/* skb freed by skb_pad() on failure */
		entry->skb = NULL;
		FUNC9(rt2x00dev, TXRX_CSR9, orig_reg);
		return;
	}

	beacon_base = FUNC0(entry->entry_idx);
	FUNC7(rt2x00dev, beacon_base, entry->skb->data,
				      entry->skb->len + padding_len);

	/*
	 * Enable beaconing again.
	 *
	 * For Wi-Fi faily generated beacons between participating stations.
	 * Set TBTT phase adaptive adjustment step to 8us (default 16us)
	 */
	FUNC9(rt2x00dev, TXRX_CSR10, 0x00001008);

	FUNC5(&reg, TXRX_CSR9_BEACON_GEN, 1);
	FUNC9(rt2x00dev, TXRX_CSR9, reg);

	/*
	 * Clean up the beacon skb.
	 */
	FUNC1(entry->skb);
	entry->skb = NULL;
}