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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  napi; int /*<<< orphan*/  vlgrp; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int E1000_RXD_STAT_VP ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter,
			      struct net_device *netdev, struct sk_buff *skb,
			      u32 staterr, __le16 vlan)
{

	FUNC0(adapter, staterr, skb);

	skb->protocol = FUNC1(skb, netdev);

	if (staterr & E1000_RXD_STAT_VP)
		FUNC4(&adapter->napi, adapter->vlgrp,
				 FUNC2(vlan), skb);
	else
		FUNC3(&adapter->napi, skb);
}