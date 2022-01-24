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
typedef  scalar_t__ u_int ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer; int /*<<< orphan*/  (* recv ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;
struct manager {scalar_t__ lastid; int /*<<< orphan*/  options; TYPE_1__ ch; int /*<<< orphan*/  sendq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MGR_PH_ACTIVE ; 
 int /*<<< orphan*/  MGR_PH_NOTREADY ; 
 scalar_t__ MISDN_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct manager *mgr, u_int id)
{
	if (FUNC5(MGR_PH_NOTREADY, &mgr->options)) {
		if (id == mgr->lastid) {
			if (FUNC5(MGR_PH_ACTIVE, &mgr->options)) {
				struct sk_buff	*skb;

				skb = FUNC2(&mgr->sendq);
				if (skb) {
					mgr->lastid = FUNC1(skb);
					if (!mgr->ch.recv(mgr->ch.peer, skb))
						return;
					FUNC0(skb);
				}
			}
			mgr->lastid = MISDN_ID_NONE;
			FUNC4(MGR_PH_NOTREADY, &mgr->options);
		}
	}
}