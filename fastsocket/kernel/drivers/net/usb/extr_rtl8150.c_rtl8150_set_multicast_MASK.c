#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; scalar_t__ mc_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_creg; } ;
typedef  TYPE_1__ rtl8150_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	rtl8150_t *dev = FUNC3(netdev);
	FUNC4(netdev);
	if (netdev->flags & IFF_PROMISC) {
		dev->rx_creg |= FUNC1(0x0001);
		FUNC2(&netdev->dev, "%s: promiscuous mode\n", netdev->name);
	} else if (netdev->mc_count ||
		   (netdev->flags & IFF_ALLMULTI)) {
		dev->rx_creg &= FUNC1(0xfffe);
		dev->rx_creg |= FUNC1(0x0002);
		FUNC2(&netdev->dev, "%s: allmulti set\n", netdev->name);
	} else {
		/* ~RX_MULTICAST, ~RX_PROMISCUOUS */
		dev->rx_creg &= FUNC1(0x00fc);
	}
	FUNC0(dev, RCR, 2);
	FUNC5(netdev);
}