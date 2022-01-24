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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xq; } ;
struct ppp {int /*<<< orphan*/  dev; TYPE_1__ file; int /*<<< orphan*/  xmit_pending; int /*<<< orphan*/  closing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ppp*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ppp *ppp)
{
	struct sk_buff *skb;

	FUNC3(ppp);
	if (!ppp->closing) {
		FUNC1(ppp);
		while (!ppp->xmit_pending
		       && (skb = FUNC5(&ppp->file.xq)))
			FUNC2(ppp, skb);
		/* If there's no work left to do, tell the core net
		   code that we can accept some more. */
		if (!ppp->xmit_pending && !FUNC6(&ppp->file.xq))
			FUNC0(ppp->dev);
	}
	FUNC4(ppp);
}