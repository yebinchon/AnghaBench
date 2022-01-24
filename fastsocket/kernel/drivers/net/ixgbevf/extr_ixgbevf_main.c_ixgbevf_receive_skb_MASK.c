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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct ixgbevf_q_vector {int /*<<< orphan*/  napi; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {int flags; scalar_t__ vlgrp; } ;

/* Variables and functions */
 int IXGBE_FLAG_IN_NETPOLL ; 
 int IXGBE_RXD_STAT_VP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct ixgbevf_q_vector *q_vector,
				struct sk_buff *skb, u8 status,
				union ixgbe_adv_rx_desc *rx_desc)
{
	struct ixgbevf_adapter *adapter = q_vector->adapter;
	bool is_vlan = (status & IXGBE_RXD_STAT_VP);
	u16 tag = FUNC0(rx_desc->wb.upper.vlan);

	if (!(adapter->flags & IXGBE_FLAG_IN_NETPOLL)) {
		if (adapter->vlgrp && is_vlan)
			FUNC3(&q_vector->napi,
					 adapter->vlgrp,
					 tag, skb);
		else
			FUNC1(&q_vector->napi, skb);
	} else
		FUNC2(skb);
}