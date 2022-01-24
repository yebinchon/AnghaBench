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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct e1000_adapter {int /*<<< orphan*/  napi; scalar_t__ vlgrp; int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int E1000_RXD_SPC_VLAN_MASK ; 
 int E1000_RXD_STAT_VP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter, u8 status,
			      __le16 vlan, struct sk_buff *skb)
{
	skb->protocol = FUNC0(skb, adapter->netdev);

	if ((FUNC3(adapter->vlgrp && (status & E1000_RXD_STAT_VP))))
		FUNC4(&adapter->napi, adapter->vlgrp,
				 FUNC1(vlan) & E1000_RXD_SPC_VLAN_MASK,
				 skb);
	else
		FUNC2(&adapter->napi, skb);
}