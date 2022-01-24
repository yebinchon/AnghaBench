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
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct TYPE_2__ {int qlen; int /*<<< orphan*/  lock; } ;
struct sge_ofld_txq {TYPE_1__ sendq; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_ofld_txq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sge_ofld_txq *q, struct sk_buff *skb)
{
	skb->priority = FUNC1(skb);       /* save for restart */
	FUNC3(&q->sendq.lock);
	FUNC0(&q->sendq, skb);
	if (q->sendq.qlen == 1)
		FUNC2(q);
	FUNC4(&q->sendq.lock);
	return NET_XMIT_SUCCESS;
}