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
struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct enic {unsigned int loop_tag; scalar_t__ loop_enable; } ;
struct TYPE_2__ {unsigned int gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,struct vnic_wq*,struct sk_buff*,unsigned int,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*,struct vnic_wq*,struct sk_buff*,int,unsigned int,int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC6(struct enic *enic,
	struct vnic_wq *wq, struct sk_buff *skb)
{
	unsigned int mss = FUNC3(skb)->gso_size;
	unsigned int vlan_tag = 0;
	int vlan_tag_insert = 0;
	int loopback = 0;

	if (FUNC5(skb)) {
		/* VLAN tag from trunking driver */
		vlan_tag_insert = 1;
		vlan_tag = FUNC4(skb);
	} else if (enic->loop_enable) {
		vlan_tag = enic->loop_tag;
		loopback = 1;
	}

	if (mss)
		FUNC1(enic, wq, skb, mss,
			vlan_tag_insert, vlan_tag, loopback);
	else if	(skb->ip_summed == CHECKSUM_PARTIAL)
		FUNC0(enic, wq, skb,
			vlan_tag_insert, vlan_tag, loopback);
	else
		FUNC2(enic, wq, skb,
			vlan_tag_insert, vlan_tag, loopback);
}