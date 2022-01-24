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
struct sk_buff {scalar_t__ truesize; scalar_t__ len; } ;
struct fritz_bcs {struct sk_buff* tx_skb; scalar_t__ tx_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fritz_bcs*,int,void*) ; 
 int CONFIRM ; 
 int PH_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct fritz_bcs*) ; 

__attribute__((used)) static inline void FUNC3(struct fritz_bcs *bcs)
{
	struct sk_buff *skb;

	skb = bcs->tx_skb;
	if (!skb)
		return;

	if (skb->len) {
		FUNC2(bcs);
		return;
	}
	bcs->tx_cnt = 0;
	bcs->tx_skb = NULL;
	FUNC0(bcs, PH_DATA | CONFIRM, (void *)(unsigned long)skb->truesize);
	FUNC1(skb);
}