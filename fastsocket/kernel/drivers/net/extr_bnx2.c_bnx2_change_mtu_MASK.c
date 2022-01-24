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
struct net_device {int mtu; } ;
struct bnx2 {int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  rx_ring_size; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ MAX_ETHERNET_JUMBO_PACKET_SIZE ; 
 scalar_t__ MIN_ETHERNET_PACKET_SIZE ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev, int new_mtu)
{
	struct bnx2 *bp = FUNC1(dev);

	if (((new_mtu + ETH_HLEN) > MAX_ETHERNET_JUMBO_PACKET_SIZE) ||
		((new_mtu + ETH_HLEN) < MIN_ETHERNET_PACKET_SIZE))
		return -EINVAL;

	dev->mtu = new_mtu;
	return (FUNC0(bp, bp->rx_ring_size, bp->tx_ring_size));
}