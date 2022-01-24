#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skb_frame_desc {int /*<<< orphan*/  desc_len; int /*<<< orphan*/  desc; } ;
struct rxdone_entry_desc {int cipher_status; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  flags; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int data_size; int /*<<< orphan*/  rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXDONE_L2PAD ; 
 int /*<<< orphan*/  RXDONE_MY_BSS ; 
 int /*<<< orphan*/  RXD_W0_CIPHER_ERROR ; 
 int /*<<< orphan*/  RXD_W0_CRC_ERROR ; 
 int /*<<< orphan*/  RXD_W0_DECRYPTED ; 
 int /*<<< orphan*/  RXD_W0_L2PAD ; 
 int /*<<< orphan*/  RXD_W0_MY_BSS ; 
 int /*<<< orphan*/  RXINFO_DESC_SIZE ; 
 int /*<<< orphan*/  RXINFO_W0_USB_DMA_RX_PKT_LEN ; 
 int RX_CRYPTO_FAIL_MIC ; 
 int RX_CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int /*<<< orphan*/  RX_FLAG_IV_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_STRIPPED ; 
 struct skb_frame_desc* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_entry*,struct rxdone_entry_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct queue_entry *entry,
				  struct rxdone_entry_desc *rxdesc)
{
	struct skb_frame_desc *skbdesc = FUNC0(entry->skb);
	__le32 *rxi = (__le32 *)entry->skb->data;
	__le32 *rxd;
	u32 word;
	int rx_pkt_len;

	/*
	 * Copy descriptor to the skbdesc->desc buffer, making it safe from
	 * moving of frame data in rt2x00usb.
	 */
	FUNC1(skbdesc->desc, rxi, skbdesc->desc_len);

	/*
	 * RX frame format is :
	 * | RXINFO | RXWI | header | L2 pad | payload | pad | RXD | USB pad |
	 *          |<------------ rx_pkt_len -------------->|
	 */
	FUNC3(rxi, 0, &word);
	rx_pkt_len = FUNC5(word, RXINFO_W0_USB_DMA_RX_PKT_LEN);

	/*
	 * Remove the RXINFO structure from the sbk.
	 */
	FUNC6(entry->skb, RXINFO_DESC_SIZE);

	/*
	 * Check for rx_pkt_len validity. Return if invalid, leaving
	 * rxdesc->size zeroed out by the upper level.
	 */
	if (FUNC8(rx_pkt_len == 0 ||
			rx_pkt_len > entry->queue->data_size)) {
		FUNC4(entry->queue->rt2x00dev,
			   "Bad frame size %d, forcing to 0\n", rx_pkt_len);
		return;
	}

	rxd = (__le32 *)(entry->skb->data + rx_pkt_len);

	/*
	 * It is now safe to read the descriptor on all architectures.
	 */
	FUNC3(rxd, 0, &word);

	if (FUNC5(word, RXD_W0_CRC_ERROR))
		rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;

	rxdesc->cipher_status = FUNC5(word, RXD_W0_CIPHER_ERROR);

	if (FUNC5(word, RXD_W0_DECRYPTED)) {
		/*
		 * Hardware has stripped IV/EIV data from 802.11 frame during
		 * decryption. Unfortunately the descriptor doesn't contain
		 * any fields with the EIV/IV data either, so they can't
		 * be restored by rt2x00lib.
		 */
		rxdesc->flags |= RX_FLAG_IV_STRIPPED;

		/*
		 * The hardware has already checked the Michael Mic and has
		 * stripped it from the frame. Signal this to mac80211.
		 */
		rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

		if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
			rxdesc->flags |= RX_FLAG_DECRYPTED;
		else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
			rxdesc->flags |= RX_FLAG_MMIC_ERROR;
	}

	if (FUNC5(word, RXD_W0_MY_BSS))
		rxdesc->dev_flags |= RXDONE_MY_BSS;

	if (FUNC5(word, RXD_W0_L2PAD))
		rxdesc->dev_flags |= RXDONE_L2PAD;

	/*
	 * Remove RXD descriptor from end of buffer.
	 */
	FUNC7(entry->skb, rx_pkt_len);

	/*
	 * Process the RXWI structure.
	 */
	FUNC2(entry, rxdesc);
}