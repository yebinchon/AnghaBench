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
struct TYPE_2__ {int /*<<< orphan*/  l3m; scalar_t__ debug; int /*<<< orphan*/  proc; int /*<<< orphan*/  (* l3l2 ) (struct PStack*,int,struct sk_buff*) ;int /*<<< orphan*/  squeue; int /*<<< orphan*/  l3m_timer; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int CONFIRM ; 
 int DL_DATA ; 
 int DL_ESTABLISH ; 
 int /*<<< orphan*/  EV_RELEASE_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L3_LC_ESTAB ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct PStack*,int,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int dequeued = 0;

	FUNC1(&st->l3.l3m_timer, 51);
	FUNC0(fi, ST_L3_LC_ESTAB);
	while ((skb = FUNC5(&st->l3.squeue))) {
		st->l3.l3l2(st, DL_DATA | REQUEST, skb);
		dequeued++;
	}
	if ((!st->l3.proc) &&  dequeued) {
		if (st->l3.debug)
			FUNC3(st, "lc_connected: release link");
		FUNC2(&st->l3.l3m, EV_RELEASE_REQ, NULL);
	} else
		FUNC4(st, DL_ESTABLISH | CONFIRM);
}