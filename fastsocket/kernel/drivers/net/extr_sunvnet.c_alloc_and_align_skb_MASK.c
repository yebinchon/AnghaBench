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
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VNET_PACKET_SKIP ; 
 struct sk_buff* FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct net_device *dev,
					   unsigned int len)
{
	struct sk_buff *skb = FUNC0(dev, len+VNET_PACKET_SKIP+8+8);
	unsigned long addr, off;

	if (FUNC2(!skb))
		return NULL;

	addr = (unsigned long) skb->data;
	off = ((addr + 7UL) & ~7UL) - addr;
	if (off)
		FUNC1(skb, off);

	return skb;
}