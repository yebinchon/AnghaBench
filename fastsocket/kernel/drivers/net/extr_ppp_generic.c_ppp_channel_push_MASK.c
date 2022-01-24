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
struct sk_buff {int dummy; } ;
struct ppp {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  xq; } ;
struct channel {int /*<<< orphan*/  upl; struct ppp* ppp; TYPE_2__ file; int /*<<< orphan*/  downl; TYPE_3__* chan; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start_xmit ) (TYPE_3__*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC10(struct channel *pch)
{
	struct sk_buff *skb;
	struct ppp *ppp;

	FUNC7(&pch->downl);
	if (pch->chan) {
		while (!FUNC4(&pch->file.xq)) {
			skb = FUNC3(&pch->file.xq);
			if (!pch->chan->ops->start_xmit(pch->chan, skb)) {
				/* put the packet back and try again later */
				FUNC5(&pch->file.xq, skb);
				break;
			}
		}
	} else {
		/* channel got deregistered */
		FUNC6(&pch->file.xq);
	}
	FUNC8(&pch->downl);
	/* see if there is anything from the attached unit to be sent */
	if (FUNC4(&pch->file.xq)) {
		FUNC1(&pch->upl);
		ppp = pch->ppp;
		if (ppp)
			FUNC0(ppp);
		FUNC2(&pch->upl);
	}
}