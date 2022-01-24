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
struct sk_buff {scalar_t__ csum_offset; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {int version; scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int TXPKT_L4CSUM_DIS ; 
 int TX_CSUM_TCPIP ; 
 int TX_CSUM_TCPIP6 ; 
 int TX_CSUM_UDPIP ; 
 int TX_CSUM_UDPIP6 ; 
 struct iphdr* FUNC5 (struct sk_buff const*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff const*) ; 
 scalar_t__ FUNC8 (struct sk_buff const*) ; 
 int FUNC9 (struct sk_buff const*) ; 

__attribute__((used)) static u64 FUNC10(const struct sk_buff *skb)
{
	int csum_type;
	const struct iphdr *iph = FUNC5(skb);

	if (iph->version == 4) {
		if (iph->protocol == IPPROTO_TCP)
			csum_type = TX_CSUM_TCPIP;
		else if (iph->protocol == IPPROTO_UDP)
			csum_type = TX_CSUM_UDPIP;
		else {
nocsum:			/*
			 * unknown protocol, disable HW csum
			 * and hope a bad packet is detected
			 */
			return TXPKT_L4CSUM_DIS;
		}
	} else {
		/*
		 * this doesn't work with extension headers
		 */
		const struct ipv6hdr *ip6h = (const struct ipv6hdr *)iph;

		if (ip6h->nexthdr == IPPROTO_TCP)
			csum_type = TX_CSUM_TCPIP6;
		else if (ip6h->nexthdr == IPPROTO_UDP)
			csum_type = TX_CSUM_UDPIP6;
		else
			goto nocsum;
	}

	if (FUNC6(csum_type >= TX_CSUM_TCPIP))
		return FUNC2(csum_type) |
			FUNC4(FUNC7(skb)) |
			FUNC3(FUNC8(skb) - ETH_HLEN);
	else {
		int start = FUNC9(skb);

		return FUNC2(csum_type) | FUNC1(start) |
			FUNC0(start + skb->csum_offset);
	}
}