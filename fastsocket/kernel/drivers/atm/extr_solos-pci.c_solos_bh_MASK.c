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
struct solos_card {int nr_ports; int buffer_size; scalar_t__ config_regs; int /*<<< orphan*/  tlet; TYPE_2__* dev; struct sk_buff** rx_skb; scalar_t__* atmdev; scalar_t__ using_dma; int /*<<< orphan*/  cli_queue_lock; int /*<<< orphan*/ * cli_queue; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; int /*<<< orphan*/  truesize; } ;
struct pkt_hdr {int /*<<< orphan*/  vpi; int /*<<< orphan*/  vci; int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct atm_vcc {TYPE_1__* stats; int /*<<< orphan*/  (* push ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_7__ {int dma_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx; } ;

/* Variables and functions */
 scalar_t__ FLAGS_ADDR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
#define  PKT_COMMAND 130 
#define  PKT_DATA 129 
#define  PKT_STATUS 128 
 scalar_t__ FUNC0 (struct solos_card*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int RX_DMA_SIZE ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 scalar_t__ atmdebug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 struct atm_vcc* FUNC9 (scalar_t__,int,int) ; 
 int FUNC10 (struct solos_card*) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pkt_hdr*,scalar_t__,int) ; 
 scalar_t__ FUNC14 () ; 
 int FUNC15 (TYPE_2__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct solos_card*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct solos_card*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 struct pkt_hdr* FUNC21 (struct sk_buff*,int) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

void FUNC28(unsigned long card_arg)
{
	struct solos_card *card = (void *)card_arg;
	uint32_t card_flags;
	uint32_t rx_done = 0;
	int port;

	/*
	 * Since fpga_tx() is going to need to read the flags under its lock,
	 * it can return them to us so that we don't have to hit PCI MMIO
	 * again for the same information
	 */
	card_flags = FUNC10(card);

	for (port = 0; port < card->nr_ports; port++) {
		if (card_flags & (0x10 << port)) {
			struct pkt_hdr _hdr, *header;
			struct sk_buff *skb;
			struct atm_vcc *vcc;
			int size;

			if (card->using_dma) {
				skb = card->rx_skb[port];
				card->rx_skb[port] = NULL;

				FUNC16(card->dev, FUNC2(skb)->dma_addr,
						 RX_DMA_SIZE, PCI_DMA_FROMDEVICE);

				header = (void *)skb->data;
				size = FUNC12(header->size);
				FUNC21(skb, size + sizeof(*header));
				FUNC20(skb, sizeof(*header));
			} else {
				header = &_hdr;

				rx_done |= 0x10 << port;

				FUNC13(header, FUNC0(card, port), sizeof(*header));

				size = FUNC12(header->size);
				if (size > (card->buffer_size - sizeof(*header))){
					FUNC8(&card->dev->dev, "Invalid buffer size\n");
					continue;
				}

				skb = FUNC3(size + 1, GFP_ATOMIC);
				if (!skb) {
					if (FUNC14())
						FUNC8(&card->dev->dev, "Failed to allocate sk_buff for RX\n");
					continue;
				}

				FUNC13(FUNC21(skb, size),
					      FUNC0(card, port) + sizeof(*header),
					      size);
			}
			if (atmdebug) {
				FUNC6(&card->dev->dev, "Received: device %d\n", port);
				FUNC6(&card->dev->dev, "size: %d VPI: %d VCI: %d\n",
					 size, FUNC12(header->vpi),
					 FUNC12(header->vci));
				FUNC17(skb);
			}

			switch (FUNC12(header->type)) {
			case PKT_DATA:
				vcc = FUNC9(card->atmdev[port], FUNC12(header->vpi),
					       FUNC12(header->vci));
				if (!vcc) {
					if (FUNC14())
						FUNC8(&card->dev->dev, "Received packet for unknown VCI.VPI %d.%d on port %d\n",
							 FUNC12(header->vci), FUNC12(header->vpi),
							 port);
					continue;
				}
				FUNC4(vcc, skb->truesize);
				vcc->push(vcc, skb);
				FUNC5(&vcc->stats->rx);
				break;

			case PKT_STATUS:
				if (FUNC19(card, port, skb) &&
				    FUNC14()) {
					FUNC8(&card->dev->dev, "Bad status packet of %d bytes on port %d:\n", skb->len, port);
					FUNC17(skb);
				}
				FUNC7(skb);
				break;

			case PKT_COMMAND:
			default: /* FIXME: Not really, surely? */
				if (FUNC18(card, port, skb))
					break;
				FUNC24(&card->cli_queue_lock);
				if (FUNC22(&card->cli_queue[port]) > 10) {
					if (FUNC14())
						FUNC8(&card->dev->dev, "Dropping console response on port %d\n",
							 port);
					FUNC7(skb);
				} else
					FUNC23(&card->cli_queue[port], skb);
				FUNC25(&card->cli_queue_lock);
				break;
			}
		}
		/* Allocate RX skbs for any ports which need them */
		if (card->using_dma && card->atmdev[port] &&
		    !card->rx_skb[port]) {
			struct sk_buff *skb = FUNC3(RX_DMA_SIZE, GFP_ATOMIC);
			if (skb) {
				FUNC2(skb)->dma_addr =
					FUNC15(card->dev, skb->data,
						       RX_DMA_SIZE, PCI_DMA_FROMDEVICE);
				FUNC11(FUNC2(skb)->dma_addr,
					  card->config_regs + FUNC1(port));
				card->rx_skb[port] = skb;
			} else {
				if (FUNC14())
					FUNC8(&card->dev->dev, "Failed to allocate RX skb");

				/* We'll have to try again later */
				FUNC27(&card->tlet);
			}
		}
	}
	if (rx_done)
		FUNC11(rx_done, card->config_regs + FLAGS_ADDR);

	return;
}