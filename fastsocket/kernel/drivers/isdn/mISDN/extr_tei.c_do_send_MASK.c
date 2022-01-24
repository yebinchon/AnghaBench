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
struct TYPE_2__ {int /*<<< orphan*/  peer; scalar_t__ (* recv ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;
struct manager {int /*<<< orphan*/  lastid; int /*<<< orphan*/  options; TYPE_1__ ch; int /*<<< orphan*/  deact; int /*<<< orphan*/  sendq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_UI ; 
 int /*<<< orphan*/  MGR_PH_ACTIVE ; 
 int /*<<< orphan*/  MGR_PH_NOTREADY ; 
 int /*<<< orphan*/  MISDN_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct manager *mgr)
{
	if (!FUNC7(MGR_PH_ACTIVE, &mgr->options))
		return;

	if (!FUNC6(MGR_PH_NOTREADY, &mgr->options)) {
		struct sk_buff	*skb = FUNC3(&mgr->sendq);

		if (!skb) {
			FUNC5(MGR_PH_NOTREADY, &mgr->options);
			return;
		}
		mgr->lastid = FUNC2(skb);
		FUNC1(&mgr->deact, EV_UI, NULL);
		if (mgr->ch.recv(mgr->ch.peer, skb)) {
			FUNC0(skb);
			FUNC5(MGR_PH_NOTREADY, &mgr->options);
			mgr->lastid = MISDN_ID_NONE;
		}
	}
}