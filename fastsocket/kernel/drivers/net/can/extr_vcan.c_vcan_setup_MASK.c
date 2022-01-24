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
struct net_device {int mtu; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  flags; scalar_t__ tx_queue_len; scalar_t__ addr_len; scalar_t__ hard_header_len; int /*<<< orphan*/  type; } ;
struct can_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_CAN ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 scalar_t__ echo ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  vcan_netdev_ops ; 

__attribute__((used)) static void FUNC0(struct net_device *dev)
{
	dev->type		= ARPHRD_CAN;
	dev->mtu		= sizeof(struct can_frame);
	dev->hard_header_len	= 0;
	dev->addr_len		= 0;
	dev->tx_queue_len	= 0;
	dev->flags		= IFF_NOARP;

	/* set flags according to driver capabilities */
	if (echo)
		dev->flags |= IFF_ECHO;

	dev->netdev_ops		= &vcan_netdev_ops;
	dev->destructor		= free_netdev;
}