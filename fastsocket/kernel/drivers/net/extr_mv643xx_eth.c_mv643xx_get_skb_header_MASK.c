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
typedef  int u64 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int LRO_IPV4 ; 
 int LRO_TCP ; 
 unsigned long RX_IP_HDR_OK ; 
 unsigned long RX_PKT_IS_ETHERNETV2 ; 
 unsigned long RX_PKT_IS_IPV4 ; 
 unsigned long RX_PKT_IS_VLAN_TAGGED ; 
 unsigned long RX_PKT_LAYER4_TYPE_MASK ; 
 unsigned long RX_PKT_LAYER4_TYPE_TCP_IPV4 ; 
 void* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, void **iphdr, void **tcph,
		       u64 *hdr_flags, void *priv)
{
	unsigned long cmd_sts = (unsigned long)priv;

	/*
	 * Make sure that this packet is Ethernet II, is not VLAN
	 * tagged, is IPv4, has a valid IP header, and is TCP.
	 */
	if ((cmd_sts & (RX_IP_HDR_OK | RX_PKT_IS_IPV4 |
		       RX_PKT_IS_ETHERNETV2 | RX_PKT_LAYER4_TYPE_MASK |
		       RX_PKT_IS_VLAN_TAGGED)) !=
	    (RX_IP_HDR_OK | RX_PKT_IS_IPV4 |
	     RX_PKT_IS_ETHERNETV2 | RX_PKT_LAYER4_TYPE_TCP_IPV4))
		return -1;

	FUNC2(skb);
	FUNC3(skb, FUNC1(skb));
	*iphdr = FUNC0(skb);
	*tcph = FUNC4(skb);
	*hdr_flags = LRO_IPV4 | LRO_TCP;

	return 0;
}