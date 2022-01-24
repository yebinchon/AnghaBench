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
struct net_device {int tx_queue_len; int flags; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  broadcast; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/  type; scalar_t__ addr_len; scalar_t__ hard_header_len; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_AX25 ; 
 int /*<<< orphan*/  AX25_ADDR_LEN ; 
 int /*<<< orphan*/  AX_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  ax25_bcast ; 
 int /*<<< orphan*/  ax25_defaddr ; 
 int /*<<< orphan*/  ax_header_ops ; 
 int /*<<< orphan*/  ax_netdev_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev)
{
	/* Finish setting up the DEVICE info. */
	dev->mtu             = AX_MTU;
	dev->hard_header_len = 0;
	dev->addr_len        = 0;
	dev->type            = ARPHRD_AX25;
	dev->tx_queue_len    = 10;
	dev->header_ops      = &ax_header_ops;
	dev->netdev_ops	     = &ax_netdev_ops;


	FUNC0(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
	FUNC0(dev->dev_addr,  &ax25_defaddr,  AX25_ADDR_LEN);

	dev->flags      = IFF_BROADCAST | IFF_MULTICAST;
}