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
struct sk_buff {scalar_t__ destructor; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

void FUNC3(struct sk_buff *skb)
{
	if (!skb)
		return;
	FUNC0(skb->next);
	if (skb->destructor)
		/* cannot kfree_skb() on hard IRQ (net/core/skbuff.c) if
		 * destructor exists
		 */
		FUNC2(skb);
	else
		/* can free immediately (even in_irq()) if destructor
		 * does not exist
		 */
		FUNC1(skb);
}