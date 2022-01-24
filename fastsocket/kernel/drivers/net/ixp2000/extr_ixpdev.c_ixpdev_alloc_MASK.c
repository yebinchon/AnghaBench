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
struct net_device {int features; int /*<<< orphan*/ * netdev_ops; } ;
struct ixpdev_priv {int channel; scalar_t__ tx_queue_entries; int /*<<< orphan*/  napi; struct net_device* dev; } ;

/* Variables and functions */
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_SG ; 
 struct net_device* FUNC0 (int) ; 
 int /*<<< orphan*/  ixpdev_netdev_ops ; 
 int /*<<< orphan*/  ixpdev_poll ; 
 struct ixpdev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct net_device *FUNC3(int channel, int sizeof_priv)
{
	struct net_device *dev;
	struct ixpdev_priv *ip;

	dev = FUNC0(sizeof_priv);
	if (dev == NULL)
		return NULL;

	dev->netdev_ops = &ixpdev_netdev_ops;

	dev->features |= NETIF_F_SG | NETIF_F_HW_CSUM;

	ip = FUNC1(dev);
	ip->dev = dev;
	FUNC2(dev, &ip->napi, ixpdev_poll, 64);
	ip->channel = channel;
	ip->tx_queue_entries = 0;

	return dev;
}