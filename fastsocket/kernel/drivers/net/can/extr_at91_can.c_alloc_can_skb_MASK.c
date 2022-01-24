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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_CAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct net_device*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct net_device *dev,
		struct can_frame **cf)
{
	struct sk_buff *skb;

	skb = FUNC1(dev, sizeof(struct can_frame));
	if (FUNC3(!skb))
		return NULL;

	skb->protocol = FUNC0(ETH_P_CAN);
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	*cf = (struct can_frame *)FUNC2(skb, sizeof(struct can_frame));

	return skb;
}