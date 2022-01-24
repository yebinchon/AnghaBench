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
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int LRO_IPV4 ; 
 int LRO_TCP ; 
 int XCT_MACRX_HTY_IPV4_OK ; 
 int XCT_MACRX_HTY_M ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 void* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, void **iphdr,
		       void **tcph, u64 *hdr_flags, void *data)
{
	u64 macrx = (u64) data;
	unsigned int ip_len;
	struct iphdr *iph;

	/* IPv4 header checksum failed */
	if ((macrx & XCT_MACRX_HTY_M) != XCT_MACRX_HTY_IPV4_OK)
		return -1;

	/* non tcp packet */
	FUNC3(skb);
	iph = FUNC0(skb);
	if (iph->protocol != IPPROTO_TCP)
		return -1;

	ip_len = FUNC1(skb);
	FUNC4(skb, ip_len);
	*tcph = FUNC5(skb);

	/* check if ip header and tcp header are complete */
	if (FUNC2(iph->tot_len) < ip_len + FUNC6(skb))
		return -1;

	*hdr_flags = LRO_IPV4 | LRO_TCP;
	*iphdr = iph;

	return 0;
}