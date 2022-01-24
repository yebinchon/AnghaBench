#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct solos_card {int tx_mask; int /*<<< orphan*/  tx_lock; scalar_t__ config_regs; TYPE_2__* dev; scalar_t__ using_dma; int /*<<< orphan*/  tx_queue_lock; int /*<<< orphan*/ * tx_queue; struct sk_buff** tx_skb; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct atm_vcc {TYPE_1__* stats; } ;
struct TYPE_7__ {int dma_addr; struct atm_vcc* vcc; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ FLAGS_ADDR ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct solos_card*,unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ atmdebug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static uint32_t FUNC18(struct solos_card *card)
{
	uint32_t tx_pending, card_flags;
	uint32_t tx_started = 0;
	struct sk_buff *skb;
	struct atm_vcc *vcc;
	unsigned char port;
	unsigned long flags;

	FUNC15(&card->tx_lock, flags);
	
	card_flags = FUNC6(card->config_regs + FLAGS_ADDR);
	/*
	 * The queue lock is required for _writing_ to tx_mask, but we're
	 * OK to read it here without locking. The only potential update
	 * that we could race with is in fpga_queue() where it sets a bit
	 * for a new port... but it's going to call this function again if
	 * it's doing that, anyway.
	 */
	tx_pending = card->tx_mask & ~card_flags;

	for (port = 0; tx_pending; tx_pending >>= 1, port++) {
		if (tx_pending & 1) {
			struct sk_buff *oldskb = card->tx_skb[port];
			if (oldskb)
				FUNC10(card->dev, FUNC0(oldskb)->dma_addr,
						 oldskb->len, PCI_DMA_TODEVICE);

			FUNC14(&card->tx_queue_lock);
			skb = FUNC12(&card->tx_queue[port]);
			if (!skb)
				card->tx_mask &= ~(1 << port);
			FUNC16(&card->tx_queue_lock);

			if (skb && !card->using_dma) {
				FUNC8(FUNC1(card, port), skb->data, skb->len);
				tx_started |= 1 << port;
				oldskb = skb; /* We're done with this skb already */
			} else if (skb && card->using_dma) {
				FUNC0(skb)->dma_addr = FUNC9(card->dev, skb->data,
								       skb->len, PCI_DMA_TODEVICE);
				FUNC7(FUNC0(skb)->dma_addr,
					  card->config_regs + FUNC2(port));
			}

			if (!oldskb)
				continue;

			/* Clean up and free oldskb now it's gone */
			if (atmdebug) {
				FUNC4(&card->dev->dev, "Transmitted: port %d\n",
					 port);
				FUNC11(oldskb);
			}

			vcc = FUNC0(oldskb)->vcc;

			if (vcc) {
				FUNC3(&vcc->stats->tx);
				FUNC13(vcc, oldskb);
			} else
				FUNC5(oldskb);

		}
	}
	/* For non-DMA TX, write the 'TX start' bit for all four ports simultaneously */
	if (tx_started)
		FUNC7(tx_started, card->config_regs + FLAGS_ADDR);

	FUNC17(&card->tx_lock, flags);
	return card_flags;
}