#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {unsigned int len; TYPE_1__* dev; } ;
struct sge {TYPE_3__* adapter; struct cmdQ* cmdQ; struct sched* tx_sched; } ;
struct sched {unsigned int port; scalar_t__ num; TYPE_2__* p; } ;
struct cmdQ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {scalar_t__ regs; } ;
struct TYPE_5__ {unsigned int avail; struct sk_buff_head skbq; } ;
struct TYPE_4__ {size_t if_port; } ;

/* Variables and functions */
 scalar_t__ A_SG_DOORBELL ; 
 int /*<<< orphan*/  CMDQ_STAT_LAST_PKT_DB ; 
 int /*<<< orphan*/  CMDQ_STAT_RUNNING ; 
 int /*<<< orphan*/  F_CMDQ0_ENABLE ; 
 unsigned int MAX_NPORTS ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sge*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (struct sk_buff_head*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sge *sge, struct sk_buff *skb,
				unsigned int credits)
{
	struct sched *s = sge->tx_sched;
	struct sk_buff_head *skbq;
	unsigned int i, len, update = 1;

	FUNC3("sched_skb %p\n", skb);
	if (!skb) {
		if (!s->num)
			return NULL;
	} else {
		skbq = &s->p[skb->dev->if_port].skbq;
		FUNC0(skbq, skb);
		s->num++;
		skb = NULL;
	}

	if (credits < MAX_SKB_FRAGS + 1)
		goto out;

again:
	for (i = 0; i < MAX_NPORTS; i++) {
		s->port = ++s->port & (MAX_NPORTS - 1);
		skbq = &s->p[s->port].skbq;

		skb = FUNC6(skbq);

		if (!skb)
			continue;

		len = skb->len;
		if (len <= s->p[s->port].avail) {
			s->p[s->port].avail -= len;
			s->num--;
			FUNC1(skb, skbq);
			goto out;
		}
		skb = NULL;
	}

	if (update-- && FUNC4(sge))
		goto again;

out:
	/* If there are more pending skbs, we use the hardware to schedule us
	 * again.
	 */
	if (s->num && !skb) {
		struct cmdQ *q = &sge->cmdQ[0];
		FUNC2(CMDQ_STAT_LAST_PKT_DB, &q->status);
		if (FUNC7(CMDQ_STAT_RUNNING, &q->status) == 0) {
			FUNC5(CMDQ_STAT_LAST_PKT_DB, &q->status);
			FUNC8(F_CMDQ0_ENABLE, sge->adapter->regs + A_SG_DOORBELL);
		}
	}
	FUNC3("sched_skb ret %p\n", skb);

	return skb;
}