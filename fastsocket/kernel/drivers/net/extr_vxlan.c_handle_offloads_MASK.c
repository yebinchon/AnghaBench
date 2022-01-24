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
struct sk_buff {scalar_t__ ip_summed; } ;
struct TYPE_2__ {int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SKB_GSO_UDP_TUNNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	if (FUNC0(skb)) {
		int err = FUNC2(skb, GFP_ATOMIC);
		if (FUNC3(err))
			return err;

		FUNC1(skb)->gso_type |= SKB_GSO_UDP_TUNNEL;
	} else if (skb->ip_summed != CHECKSUM_PARTIAL)
		skb->ip_summed = CHECKSUM_NONE;

	return 0;
}