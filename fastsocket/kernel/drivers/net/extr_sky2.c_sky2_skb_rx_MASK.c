#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sky2_port {TYPE_1__* hw; scalar_t__ vlgrp; int /*<<< orphan*/  rx_tag; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int GMR_FS_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(const struct sky2_port *sky2,
			       u32 status, struct sk_buff *skb)
{
#ifdef SKY2_VLAN_TAG_USED
	u16 vlan_tag = be16_to_cpu(sky2->rx_tag);
	if (sky2->vlgrp && (status & GMR_FS_VLAN)) {
		if (skb->ip_summed == CHECKSUM_NONE)
			vlan_hwaccel_receive_skb(skb, sky2->vlgrp, vlan_tag);
		else
			vlan_gro_receive(&sky2->hw->napi, sky2->vlgrp,
					 vlan_tag, skb);
		return;
	}
#endif
	if (skb->ip_summed == CHECKSUM_NONE)
		FUNC2(skb);
	else
		FUNC1(&sky2->hw->napi, skb);
}