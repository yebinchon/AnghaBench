#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlan_ethhdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_7__ {scalar_t__ protocol; } ;
struct TYPE_6__ {scalar_t__ nexthdr; } ;
struct TYPE_5__ {unsigned int doff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ NEXTHDR_TCP ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static __be16 FUNC7(struct sk_buff *skb)
{
	__be16 protocol = skb->protocol;

	FUNC0(((struct ethhdr *)skb->data)->h_proto !=
			    protocol);
	if (protocol == FUNC2(ETH_P_8021Q)) {
		struct vlan_ethhdr *veh = (struct vlan_ethhdr *)skb->data;
		protocol = veh->h_vlan_encapsulated_proto;
	}

	if (protocol == FUNC2(ETH_P_IP)) {
		FUNC0(FUNC3(skb)->protocol != IPPROTO_TCP);
	} else {
		FUNC0(protocol != FUNC2(ETH_P_IPV6));
		FUNC0(FUNC4(skb)->nexthdr != NEXTHDR_TCP);
	}
	FUNC0((FUNC1(FUNC6(skb), skb->data)
			     + (FUNC6(skb)->doff << 2u)) >
			    FUNC5(skb));

	return protocol;
}