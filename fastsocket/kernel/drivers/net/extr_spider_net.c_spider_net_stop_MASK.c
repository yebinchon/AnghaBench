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
struct spider_net_card {int /*<<< orphan*/  rx_chain; int /*<<< orphan*/  tx_chain; int /*<<< orphan*/  aneg_timer; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPIDER_NET_DMA_TX_FEND_VALUE ; 
 int /*<<< orphan*/  SPIDER_NET_GDTDMACCNTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spider_net_card* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct spider_net_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct spider_net_card*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct spider_net_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct net_device *netdev)
{
	struct spider_net_card *card = FUNC3(netdev);

	FUNC2(&card->napi);
	FUNC4(netdev);
	FUNC5(netdev);
	FUNC0(&card->tx_timer);
	FUNC0(&card->aneg_timer);

	FUNC6(card);

	FUNC1(netdev->irq, netdev);

	FUNC11(card, SPIDER_NET_GDTDMACCNTR,
			     SPIDER_NET_DMA_TX_FEND_VALUE);

	/* turn off DMA, force end */
	FUNC7(card);

	/* release chains */
	FUNC10(card, 1);
	FUNC9(card);

	FUNC8(card, &card->tx_chain);
	FUNC8(card, &card->rx_chain);

	return 0;
}