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
struct net_device {int* dev_addr; int /*<<< orphan*/  type; scalar_t__ tx_queue_len; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE80211_RADIOTAP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  free_netdev ; 
 int /*<<< orphan*/  hwsim_netdev_ops ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	dev->netdev_ops = &hwsim_netdev_ops;
	dev->destructor = free_netdev;
	FUNC0(dev);
	dev->tx_queue_len = 0;
	dev->type = ARPHRD_IEEE80211_RADIOTAP;
	FUNC1(dev->dev_addr, 0, ETH_ALEN);
	dev->dev_addr[0] = 0x12;
}