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
struct z8530_channel {int /*<<< orphan*/  netdevice; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct z8530_channel *c, struct sk_buff *skb)
{
	/* Drop the CRC - it's not a good idea to try and negotiate it ;) */
	FUNC3(skb, skb->len - 2);
	skb->protocol = FUNC0(skb, c->netdevice);
	FUNC2(skb);
	skb->dev = c->netdevice;
	FUNC1(skb);
}