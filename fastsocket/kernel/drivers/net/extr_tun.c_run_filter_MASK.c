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
struct tap_filter {int count; int /*<<< orphan*/  mask; int /*<<< orphan*/ * addr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tap_filter *filter, const struct sk_buff *skb)
{
	/* Cannot use eth_hdr(skb) here because skb_mac_hdr() is incorrect
	 * at this point. */
	struct ethhdr *eh = (struct ethhdr *) skb->data;
	int i;

	/* Exact match */
	for (i = 0; i < filter->count; i++)
		if (!FUNC1(eh->h_dest, filter->addr[i]))
			return 1;

	/* Inexact match (multicast only) */
	if (FUNC2(eh->h_dest))
		return FUNC0(filter->mask, eh->h_dest);

	return 0;
}