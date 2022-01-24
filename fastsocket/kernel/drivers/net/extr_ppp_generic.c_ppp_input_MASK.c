#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct ppp_channel {struct channel* ppp; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  rwait; TYPE_2__ rq; } ;
struct channel {int /*<<< orphan*/  upl; int /*<<< orphan*/  ppp; TYPE_1__ file; } ;

/* Variables and functions */
 int PPP_CCPFRAG ; 
 scalar_t__ PPP_MAX_RQLEN ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct ppp_channel *chan, struct sk_buff *skb)
{
	struct channel *pch = chan->ppp;
	int proto;

	if (!pch || skb->len == 0) {
		FUNC1(skb);
		return;
	}

	proto = FUNC0(skb);
	FUNC3(&pch->upl);
	if (!pch->ppp || proto >= 0xc000 || proto == PPP_CCPFRAG) {
		/* put it on the channel queue */
		FUNC6(&pch->file.rq, skb);
		/* drop old frames if queue too long */
		while (pch->file.rq.qlen > PPP_MAX_RQLEN
		       && (skb = FUNC5(&pch->file.rq)))
			FUNC1(skb);
		FUNC7(&pch->file.rwait);
	} else {
		FUNC2(pch->ppp, skb, pch);
	}
	FUNC4(&pch->upl);
}