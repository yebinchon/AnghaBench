#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct solos_card {int nr_ports; int /*<<< orphan*/ * tx_queue; TYPE_2__* dev; struct sk_buff** tx_skb; struct sk_buff** rx_skb; TYPE_3__** atmdev; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_8__ {int /*<<< orphan*/  dma_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_1__ class_dev; int /*<<< orphan*/  number; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  RX_DMA_SIZE ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  solos_attr_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct solos_card *card)
{
	int i;

	for (i = 0; i < card->nr_ports; i++) {
		if (card->atmdev[i]) {
			struct sk_buff *skb;

			FUNC2(&card->dev->dev, "Unregistering ATM device %d\n", card->atmdev[i]->number);

			FUNC6(&card->atmdev[i]->class_dev.kobj, &solos_attr_group);
			FUNC1(card->atmdev[i]);

			skb = card->rx_skb[i];
			if (skb) {
				FUNC4(card->dev, FUNC0(skb)->dma_addr,
						 RX_DMA_SIZE, PCI_DMA_FROMDEVICE);
				FUNC3(skb);
			}
			skb = card->tx_skb[i];
			if (skb) {
				FUNC4(card->dev, FUNC0(skb)->dma_addr,
						 skb->len, PCI_DMA_TODEVICE);
				FUNC3(skb);
			}
			while ((skb = FUNC5(&card->tx_queue[i])))
				FUNC3(skb);
 
		}
	}
}