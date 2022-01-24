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
typedef  int /*<<< orphan*/  u32 ;
struct txentry_desc {int /*<<< orphan*/  flags; } ;
struct skb_frame_desc {int desc_len; int /*<<< orphan*/ * desc; int /*<<< orphan*/  flags; } ;
struct queue_entry {TYPE_1__* queue; TYPE_2__* skb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_3__ {int winfo_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_TXD_BURST ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT_IV ; 
 int /*<<< orphan*/  SKBDESC_DESC_IN_SKB ; 
 int TXINFO_DESC_SIZE ; 
 int /*<<< orphan*/  TXINFO_W0_QSEL ; 
 int /*<<< orphan*/  TXINFO_W0_SW_USE_LAST_ROUND ; 
 int /*<<< orphan*/  TXINFO_W0_USB_DMA_NEXT_VALID ; 
 int /*<<< orphan*/  TXINFO_W0_USB_DMA_TX_BURST ; 
 int /*<<< orphan*/  TXINFO_W0_USB_DMA_TX_PKT_LEN ; 
 int /*<<< orphan*/  TXINFO_W0_WIV ; 
 struct skb_frame_desc* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct queue_entry *entry,
				    struct txentry_desc *txdesc)
{
	struct skb_frame_desc *skbdesc = FUNC0(entry->skb);
	__le32 *txi = (__le32 *) entry->skb->data;
	u32 word;

	/*
	 * Initialize TXINFO descriptor
	 */
	FUNC2(txi, 0, &word);

	/*
	 * The size of TXINFO_W0_USB_DMA_TX_PKT_LEN is
	 * TXWI + 802.11 header + L2 pad + payload + pad,
	 * so need to decrease size of TXINFO.
	 */
	FUNC4(&word, TXINFO_W0_USB_DMA_TX_PKT_LEN,
			   FUNC1(entry->skb->len, 4) - TXINFO_DESC_SIZE);
	FUNC4(&word, TXINFO_W0_WIV,
			   !FUNC5(ENTRY_TXD_ENCRYPT_IV, &txdesc->flags));
	FUNC4(&word, TXINFO_W0_QSEL, 2);
	FUNC4(&word, TXINFO_W0_SW_USE_LAST_ROUND, 0);
	FUNC4(&word, TXINFO_W0_USB_DMA_NEXT_VALID, 0);
	FUNC4(&word, TXINFO_W0_USB_DMA_TX_BURST,
			   FUNC5(ENTRY_TXD_BURST, &txdesc->flags));
	FUNC3(txi, 0, word);

	/*
	 * Register descriptor details in skb frame descriptor.
	 */
	skbdesc->flags |= SKBDESC_DESC_IN_SKB;
	skbdesc->desc = txi;
	skbdesc->desc_len = TXINFO_DESC_SIZE + entry->queue->winfo_size;
}