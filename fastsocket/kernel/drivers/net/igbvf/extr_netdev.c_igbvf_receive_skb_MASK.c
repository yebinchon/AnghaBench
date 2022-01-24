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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int flags; int /*<<< orphan*/  vlgrp; } ;

/* Variables and functions */
 int E1000_RXDEXT_STATERR_LB ; 
 int E1000_RXD_SPC_VLAN_MASK ; 
 int E1000_RXD_STAT_VP ; 
 int IGBVF_FLAG_RX_LB_VLAN_BSWAP ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct igbvf_adapter *adapter,
                              struct net_device *netdev,
                              struct sk_buff *skb,
                              u32 status, u16 vlan)
{
	u16 vid;

	if (adapter->vlgrp && (status & E1000_RXD_STAT_VP)) {
		if ((adapter->flags & IGBVF_FLAG_RX_LB_VLAN_BSWAP) &&
		    (status & E1000_RXDEXT_STATERR_LB))
			vid = FUNC0(vlan) & E1000_RXD_SPC_VLAN_MASK;
		else
			vid = FUNC1(vlan) & E1000_RXD_SPC_VLAN_MASK;
		FUNC3(skb, adapter->vlgrp, vid);
	} else
		FUNC2(skb);
}