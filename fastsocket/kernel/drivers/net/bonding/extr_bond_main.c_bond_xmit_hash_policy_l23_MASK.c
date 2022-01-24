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
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
struct ethhdr {int* h_dest; int* h_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
				     struct net_device *bond_dev, int count)
{
	struct ethhdr *data = (struct ethhdr *)skb->data;
	struct iphdr *iph = FUNC1(skb);

	if (skb->protocol == FUNC0(ETH_P_IP)) {
		return ((FUNC2(iph->saddr ^ iph->daddr) & 0xffff) ^
			(data->h_dest[5] ^ data->h_source[5])) % count;
	}

	return (data->h_dest[5] ^ data->h_source[5]) % count;
}