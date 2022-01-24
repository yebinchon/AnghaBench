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
struct BCState {TYPE_2__* st; int /*<<< orphan*/  rqueue; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l1l2 ) (TYPE_2__*,int,struct sk_buff*) ;TYPE_3__ l1m; int /*<<< orphan*/  timer; } ;
struct TYPE_5__ {TYPE_1__ l1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER_ACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int INDICATION ; 
 int PH_DATA ; 
 scalar_t__ ST_L1_WAIT_ACT ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct BCState *bcs)
{
	struct sk_buff *skb;

	if (bcs->st->l1.l1m.state == ST_L1_WAIT_ACT) {
		FUNC0(&bcs->st->l1.timer, 4);
		FUNC1(&bcs->st->l1.l1m, EV_TIMER_ACT, NULL);
	}
	while ((skb = FUNC2(&bcs->rqueue))) {
		bcs->st->l1.l1l2(bcs->st, PH_DATA | INDICATION, skb);
	}
}