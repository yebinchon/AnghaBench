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
struct znet_private {int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  sia_size; int /*<<< orphan*/  sia_base; int /*<<< orphan*/  io_size; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct znet_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  znet_interrupt ; 

__attribute__((used)) static int FUNC7 (struct net_device *dev)
{
	struct znet_private *znet = FUNC2(dev);

	if (FUNC5 (dev->irq, &znet_interrupt, 0, "ZNet", dev))
		goto failed;
	if (FUNC4 (znet->rx_dma, "ZNet rx"))
		goto free_irq;
	if (FUNC4 (znet->tx_dma, "ZNet tx"))
		goto free_rx_dma;
	if (!FUNC6 (znet->sia_base, znet->sia_size, "ZNet SIA"))
		goto free_tx_dma;
	if (!FUNC6 (dev->base_addr, znet->io_size, "ZNet I/O"))
		goto free_sia;

	return 0;				/* Happy ! */

 free_sia:
	FUNC3 (znet->sia_base, znet->sia_size);
 free_tx_dma:
	FUNC0 (znet->tx_dma);
 free_rx_dma:
	FUNC0 (znet->rx_dma);
 free_irq:
	FUNC1 (dev->irq, dev);
 failed:
	return -1;
}