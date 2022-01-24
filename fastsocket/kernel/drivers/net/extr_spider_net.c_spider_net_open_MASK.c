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
struct TYPE_4__ {TYPE_1__* def; } ;
struct spider_net_card {int /*<<< orphan*/  aneg_timer; int /*<<< orphan*/  tx_chain; int /*<<< orphan*/  rx_chain; int /*<<< orphan*/  napi; int /*<<< orphan*/ * low_watermark; TYPE_2__ phy; int /*<<< orphan*/  medium; scalar_t__ aneg_count; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {scalar_t__ phy_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54XX_COPPER ; 
 int EBUSY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ SPIDER_NET_ANEG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct spider_net_card* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC7 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct spider_net_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct spider_net_card*) ; 
 int FUNC12 (struct spider_net_card*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct spider_net_card*) ; 
 int /*<<< orphan*/  spider_net_interrupt ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct spider_net_card*) ; 

int
FUNC16(struct net_device *netdev)
{
	struct spider_net_card *card = FUNC3(netdev);
	int result;

	result = FUNC13(card);
	if (result)
		goto init_firmware_failed;

	/* start probing with copper */
	card->aneg_count = 0;
	card->medium = BCM54XX_COPPER;
	FUNC15(card);
	if (card->phy.def->phy_id)
		FUNC1(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);

	result = FUNC12(card, &card->tx_chain);
	if (result)
		goto alloc_tx_failed;
	card->low_watermark = NULL;

	result = FUNC12(card, &card->rx_chain);
	if (result)
		goto alloc_rx_failed;

	/* Allocate rx skbs */
	if (FUNC7(card))
		goto alloc_skbs_failed;

	FUNC14(netdev);

	/* further enhancement: setup hw vlan, if needed */

	result = -EBUSY;
	if (FUNC6(netdev->irq, spider_net_interrupt,
			     IRQF_SHARED, netdev->name, netdev))
		goto register_int_failed;

	FUNC8(card);

	FUNC5(netdev);
	FUNC4(netdev);
	FUNC2(&card->napi);

	FUNC9(card);

	return 0;

register_int_failed:
	FUNC11(card);
alloc_skbs_failed:
	FUNC10(card, &card->rx_chain);
alloc_rx_failed:
	FUNC10(card, &card->tx_chain);
alloc_tx_failed:
	FUNC0(&card->aneg_timer);
init_firmware_failed:
	return result;
}