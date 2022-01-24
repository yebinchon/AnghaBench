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
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ napi; } ;
struct s2io_nic {TYPE_1__ config; scalar_t__ vlgrp; scalar_t__ vlan_strip_flag; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 struct s2io_nic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, u16 vlan_tag)
{
	struct net_device *dev = skb->dev;
	struct s2io_nic *sp = FUNC1(dev);

	skb->protocol = FUNC0(skb, dev);
	if (sp->vlgrp && vlan_tag && (sp->vlan_strip_flag)) {
		/* Queueing the vlan frame to the upper layer */
		if (sp->config.napi)
			FUNC4(skb, sp->vlgrp, vlan_tag);
		else
			FUNC5(skb, sp->vlgrp, vlan_tag);
	} else {
		if (sp->config.napi)
			FUNC2(skb);
		else
			FUNC3(skb);
	}
}