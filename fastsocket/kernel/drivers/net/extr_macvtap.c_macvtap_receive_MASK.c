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
struct sk_buff {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb)
{
	FUNC1(skb, ETH_HLEN);
	return FUNC0(skb->dev, skb);
}