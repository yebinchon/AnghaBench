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
struct iphdr {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int LRO_IPV4 ; 
 int LRO_TCP ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 void* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, void **iphdr,
			       void **tcph, u64 *hdr_flags, void *priv)
{
	unsigned int ip_len;
	struct iphdr *iph;
	FUNC2(skb);
	iph = FUNC0(skb);
	if (iph->protocol != IPPROTO_TCP)
		return -1;
	ip_len = FUNC1(skb);
	FUNC3(skb, ip_len);
	*tcph = FUNC4(skb);

	*hdr_flags = LRO_IPV4 | LRO_TCP;
	*iphdr = iph;
	return 0;
}