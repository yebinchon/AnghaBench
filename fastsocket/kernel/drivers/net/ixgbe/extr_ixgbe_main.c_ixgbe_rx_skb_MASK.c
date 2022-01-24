#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int features; } ;
struct ixgbe_q_vector {int /*<<< orphan*/  napi; struct ixgbe_adapter* adapter; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  vlgrp; } ;

/* Variables and functions */
 int IXGBE_FLAG_IN_NETPOLL ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_VP ; 
 int NETIF_F_HW_VLAN_RX ; 
 scalar_t__ FUNC0 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_q_vector *q_vector,
			 struct sk_buff *skb, union ixgbe_adv_rx_desc *rx_desc)
{
	struct ixgbe_adapter *adapter = q_vector->adapter;
	struct net_device *dev = skb->dev;

	if (!(adapter->flags & IXGBE_FLAG_IN_NETPOLL)) {
		if ((dev->features & NETIF_F_HW_VLAN_RX) &&
		    FUNC0(rx_desc, IXGBE_RXD_STAT_VP)) {
			u16 vid = FUNC1(rx_desc->wb.upper.vlan);
			FUNC4(&q_vector->napi, adapter->vlgrp, vid, skb);
		}
		else
			FUNC2(&q_vector->napi, skb);
	} else {
		FUNC3(skb);
	}
}