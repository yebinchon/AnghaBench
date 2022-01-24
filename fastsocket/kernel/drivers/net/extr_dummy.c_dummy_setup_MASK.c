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
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  flags; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_MULTICAST ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  dummy_netdev_ops ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	FUNC0(dev);

	/* Initialize the device structure. */
	dev->netdev_ops = &dummy_netdev_ops;
	dev->destructor = free_netdev;

	/* Fill in device structure with ethernet-generic values. */
	dev->tx_queue_len = 0;
	dev->flags |= IFF_NOARP;
	dev->flags &= ~IFF_MULTICAST;
	FUNC1(dev->dev_addr);
}