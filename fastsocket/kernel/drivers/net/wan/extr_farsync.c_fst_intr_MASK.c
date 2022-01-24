#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fst_port_info {int /*<<< orphan*/  index; int /*<<< orphan*/  run; } ;
struct fst_card_info {scalar_t__ state; scalar_t__ family; int /*<<< orphan*/  card_no; struct fst_port_info* ports; scalar_t__ dmatx_in_progress; int /*<<< orphan*/  dma_txpos; int /*<<< orphan*/  dma_len_tx; int /*<<< orphan*/  dma_port_tx; scalar_t__ pci_conf; scalar_t__ dmarx_in_progress; int /*<<< orphan*/  dma_rxpos; int /*<<< orphan*/  dma_skb_rx; int /*<<< orphan*/  dma_len_rx; int /*<<< orphan*/  dma_port_rx; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  rdindex; int /*<<< orphan*/ * evntbuff; int /*<<< orphan*/  wrindex; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
#define  ABTA_SENT 142 
#define  ABTB_SENT 141 
#define  ABTC_SENT 140 
#define  ABTD_SENT 139 
#define  CTLA_CHG 138 
#define  CTLB_CHG 137 
#define  CTLC_CHG 136 
#define  CTLD_CHG 135 
 int /*<<< orphan*/  DBG_ASS ; 
 int /*<<< orphan*/  DBG_INIT ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int /*<<< orphan*/  DBG_RX ; 
 int /*<<< orphan*/  DBG_TX ; 
 scalar_t__ DMACSR0 ; 
 scalar_t__ DMACSR1 ; 
 scalar_t__ FST_CARD_INT ; 
 scalar_t__ FST_FAMILY_TXU ; 
 scalar_t__ FST_IFAILED ; 
 int FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FST_RUNNING ; 
 scalar_t__ FST_RX_DMA_INT ; 
 scalar_t__ FST_TX_DMA_INT ; 
 int /*<<< orphan*/  FUNC2 (struct fst_card_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  INIT_CPLT 134 
#define  INIT_FAIL 133 
 scalar_t__ INTCSR_9054 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAX_CIRBUFF ; 
#define  TE1_ALMA 132 
#define  TXA_UNDF 131 
#define  TXB_UNDF 130 
#define  TXC_UNDF 129 
#define  TXD_UNDF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_card_info*) ; 
 int /*<<< orphan*/  fst_int_task ; 
 int /*<<< orphan*/  FUNC6 (struct fst_card_info*,struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fst_card_info*,struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fst_work_intq ; 
 unsigned int FUNC11 (scalar_t__) ; 
 TYPE_3__ interruptEvent ; 
 int /*<<< orphan*/  interruptHandshake ; 
 int /*<<< orphan*/  interruptRetryCount ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 TYPE_2__* FUNC13 (struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC16(int dummy, void *dev_id)
{
	struct fst_card_info *card = dev_id;
	struct fst_port_info *port;
	int rdidx;		/* Event buffer indices */
	int wridx;
	int event;		/* Actual event for processing */
	unsigned int dma_intcsr = 0;
	unsigned int do_card_interrupt;
	unsigned int int_retry_count;

	/*
	 * Check to see if the interrupt was for this card
	 * return if not
	 * Note that the call to clear the interrupt is important
	 */
	FUNC4(DBG_INTR, "intr: %d %p\n", card->irq, card);
	if (card->state != FST_RUNNING) {
		FUNC14
		    ("Interrupt received for card %d in a non running state (%d)\n",
		     card->card_no, card->state);

		/* 
		 * It is possible to really be running, i.e. we have re-loaded
		 * a running card
		 * Clear and reprime the interrupt source 
		 */
		FUNC5(card);
		return IRQ_HANDLED;
	}

	/* Clear and reprime the interrupt source */
	FUNC5(card);

	/*
	 * Is the interrupt for this card (handshake == 1)
	 */
	do_card_interrupt = 0;
	if (FUNC0(card, interruptHandshake) == 1) {
		do_card_interrupt += FST_CARD_INT;
		/* Set the software acknowledge */
		FUNC2(card, interruptHandshake, 0xEE);
	}
	if (card->family == FST_FAMILY_TXU) {
		/*
		 * Is it a DMA Interrupt
		 */
		dma_intcsr = FUNC11(card->pci_conf + INTCSR_9054);
		if (dma_intcsr & 0x00200000) {
			/*
			 * DMA Channel 0 (Rx transfer complete)
			 */
			FUNC4(DBG_RX, "DMA Rx xfer complete\n");
			FUNC12(0x8, card->pci_conf + DMACSR0);
			FUNC9(card, card->dma_port_rx,
					    card->dma_len_rx, card->dma_skb_rx,
					    card->dma_rxpos);
			card->dmarx_in_progress = 0;
			do_card_interrupt += FST_RX_DMA_INT;
		}
		if (dma_intcsr & 0x00400000) {
			/*
			 * DMA Channel 1 (Tx transfer complete)
			 */
			FUNC4(DBG_TX, "DMA Tx xfer complete\n");
			FUNC12(0x8, card->pci_conf + DMACSR1);
			FUNC10(card, card->dma_port_tx,
					    card->dma_len_tx, card->dma_txpos);
			card->dmatx_in_progress = 0;
			do_card_interrupt += FST_TX_DMA_INT;
		}
	}

	/*
	 * Have we been missing Interrupts
	 */
	int_retry_count = FUNC1(card, interruptRetryCount);
	if (int_retry_count) {
		FUNC4(DBG_ASS, "Card %d int_retry_count is  %d\n",
		    card->card_no, int_retry_count);
		FUNC3(card, interruptRetryCount, 0);
	}

	if (!do_card_interrupt) {
		return IRQ_HANDLED;
	}

	/* Scehdule the bottom half of the ISR */
	FUNC8(&fst_work_intq, card->card_no);
	FUNC15(&fst_int_task);

	/* Drain the event queue */
	rdidx = FUNC0(card, interruptEvent.rdindex) & 0x1f;
	wridx = FUNC0(card, interruptEvent.wrindex) & 0x1f;
	while (rdidx != wridx) {
		event = FUNC0(card, interruptEvent.evntbuff[rdidx]);
		port = &card->ports[event & 0x03];

		FUNC4(DBG_INTR, "Processing Interrupt event: %x\n", event);

		switch (event) {
		case TE1_ALMA:
			FUNC4(DBG_INTR, "TE1 Alarm intr\n");
			if (port->run)
				FUNC7(card, port);
			break;

		case CTLA_CHG:
		case CTLB_CHG:
		case CTLC_CHG:
		case CTLD_CHG:
			if (port->run)
				FUNC6(card, port);
			break;

		case ABTA_SENT:
		case ABTB_SENT:
		case ABTC_SENT:
		case ABTD_SENT:
			FUNC4(DBG_TX, "Abort complete port %d\n", port->index);
			break;

		case TXA_UNDF:
		case TXB_UNDF:
		case TXC_UNDF:
		case TXD_UNDF:
			/* Difficult to see how we'd get this given that we
			 * always load up the entire packet for DMA.
			 */
			FUNC4(DBG_TX, "Tx underflow port %d\n", port->index);
			FUNC13(port)->stats.tx_errors++;
			FUNC13(port)->stats.tx_fifo_errors++;
			FUNC4(DBG_ASS, "Tx underflow on card %d port %d\n",
			    card->card_no, port->index);
			break;

		case INIT_CPLT:
			FUNC4(DBG_INIT, "Card init OK intr\n");
			break;

		case INIT_FAIL:
			FUNC4(DBG_INIT, "Card init FAILED intr\n");
			card->state = FST_IFAILED;
			break;

		default:
			FUNC14("intr: unknown card event %d. ignored\n",
				   event);
			break;
		}

		/* Bump and wrap the index */
		if (++rdidx >= MAX_CIRBUFF)
			rdidx = 0;
	}
	FUNC2(card, interruptEvent.rdindex, rdidx);
        return IRQ_HANDLED;
}