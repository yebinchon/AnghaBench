#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fst_card_info {int dmarx_in_progress; scalar_t__ pci_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_ASS ; 
 int /*<<< orphan*/  DBG_RX ; 
 scalar_t__ DMACSR0 ; 
 scalar_t__ DMADPR0 ; 
 scalar_t__ DMALADR0 ; 
 scalar_t__ DMAPADR0 ; 
 scalar_t__ DMASIZ0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC3(struct fst_card_info *card, unsigned char *skb,
	   unsigned char *mem, int len)
{
	/*
	 * This routine will setup the DMA and start it
	 */

	FUNC0(DBG_RX, "In fst_rx_dma %p %p %d\n", skb, mem, len);
	if (card->dmarx_in_progress) {
		FUNC0(DBG_ASS, "In fst_rx_dma while dma in progress\n");
	}

	FUNC2((unsigned long) skb, card->pci_conf + DMAPADR0);	/* Copy to here */
	FUNC2((unsigned long) mem, card->pci_conf + DMALADR0);	/* from here */
	FUNC2(len, card->pci_conf + DMASIZ0);	/* for this length */
	FUNC2(0x00000000c, card->pci_conf + DMADPR0);	/* In this direction */

	/*
	 * We use the dmarx_in_progress flag to flag the channel as busy
	 */
	card->dmarx_in_progress = 1;
	FUNC1(0x03, card->pci_conf + DMACSR0);	/* Start the transfer */
}