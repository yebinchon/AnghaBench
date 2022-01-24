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
struct znet_private {int /*<<< orphan*/  rx_dma; int /*<<< orphan*/  tx_dma; int /*<<< orphan*/  io_size; int /*<<< orphan*/  sia_size; int /*<<< orphan*/  sia_base; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct znet_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct net_device *dev)
{
	struct znet_private *znet = FUNC2(dev);

	FUNC3 (znet->sia_base, znet->sia_size);
	FUNC3 (dev->base_addr, znet->io_size);
	FUNC0 (znet->tx_dma);
	FUNC0 (znet->rx_dma);
	FUNC1 (dev->irq, dev);
}