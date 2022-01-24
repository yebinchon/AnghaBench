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
struct TYPE_2__ {int /*<<< orphan*/  l3m; scalar_t__ debug; int /*<<< orphan*/  proc; int /*<<< orphan*/  (* l3l2 ) (struct PStack*,int,struct sk_buff*) ;int /*<<< orphan*/  squeue; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int DL_DATA ; 
 int DL_ESTABLISH ; 
 int /*<<< orphan*/  EV_RELEASE_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int INDICATION ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L3_LC_ESTAB ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int dequeued = 0;

	FUNC0(fi, ST_L3_LC_ESTAB);
	while ((skb = FUNC4(&st->l3.squeue))) {
		st->l3.l3l2(st, DL_DATA | REQUEST, skb);
		dequeued++;
	}
	if ((!st->l3.proc) &&  dequeued) {
		if (st->l3.debug)
			FUNC2(st, "lc_connect: release link");
		FUNC1(&st->l3.l3m, EV_RELEASE_REQ, NULL);
	} else
		FUNC3(st, DL_ESTABLISH | INDICATION);
}