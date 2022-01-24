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
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  tx_max_pending; void* rx_pending; void* rx_max_pending; } ;
struct bnx2x {int /*<<< orphan*/  tx_ring_size; void* rx_ring_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 void* MAX_RX_AVAIL ; 
 int /*<<< orphan*/  MAX_TX_AVAIL ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				struct ethtool_ringparam *ering)
{
	struct bnx2x *bp = FUNC1(dev);

	ering->rx_max_pending = MAX_RX_AVAIL;

	if (bp->rx_ring_size)
		ering->rx_pending = bp->rx_ring_size;
	else
		ering->rx_pending = MAX_RX_AVAIL;

	ering->tx_max_pending = FUNC0(bp) ? 0 : MAX_TX_AVAIL;
	ering->tx_pending = bp->tx_ring_size;
}