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
struct net_device {int dummy; } ;
struct ethtool_ringparam {void* tx_pending; void* rx_pending; void* tx_max_pending; void* rx_max_pending; } ;
struct bdx_priv {int rxf_size; int txd_size; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 struct bdx_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev, struct ethtool_ringparam *ring)
{
	struct bdx_priv *priv = FUNC2(netdev);

	/*max_pending - the maximum-sized FIFO we allow */
	ring->rx_max_pending = FUNC0(3);
	ring->tx_max_pending = FUNC1(3);
	ring->rx_pending = FUNC0(priv->rxf_size);
	ring->tx_pending = FUNC1(priv->txd_size);
}