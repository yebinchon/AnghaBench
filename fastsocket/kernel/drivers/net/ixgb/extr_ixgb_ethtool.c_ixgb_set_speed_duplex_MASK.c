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
struct ixgb_adapter {int link_speed; int /*<<< orphan*/  link_duplex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FULL_DUPLEX ; 
 struct ixgb_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct ixgb_adapter *adapter = FUNC0(netdev);
	/* be optimistic about our link, since we were up before */
	adapter->link_speed = 10000;
	adapter->link_duplex = FULL_DUPLEX;
	FUNC1(netdev);
	FUNC2(netdev);
}