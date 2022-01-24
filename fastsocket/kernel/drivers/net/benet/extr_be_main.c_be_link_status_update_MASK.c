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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct be_adapter {int flags; struct net_device* netdev; } ;

/* Variables and functions */
 int BE_FLAGS_LINK_STATUS_INIT ; 
 int LINK_STATUS_MASK ; 
 int LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

void FUNC2(struct be_adapter *adapter, u8 link_status)
{
	struct net_device *netdev = adapter->netdev;

	if (!(adapter->flags & BE_FLAGS_LINK_STATUS_INIT)) {
		FUNC0(netdev);
		adapter->flags |= BE_FLAGS_LINK_STATUS_INIT;
	}

	if ((link_status & LINK_STATUS_MASK) == LINK_UP)
		FUNC1(netdev);
	else
		FUNC0(netdev);
}