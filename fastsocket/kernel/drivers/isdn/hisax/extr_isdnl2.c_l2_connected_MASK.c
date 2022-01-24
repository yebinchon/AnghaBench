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
struct TYPE_2__ {scalar_t__ vs; scalar_t__ va; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; int /*<<< orphan*/  (* l2l3 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; scalar_t__ sow; scalar_t__ vr; int /*<<< orphan*/  flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int CONFIRM ; 
 int DL_ESTABLISH ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_PEND_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int PH_PULL ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 scalar_t__ FUNC2 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int pr=-1;

	if (!FUNC4(st, skb)) {
		FUNC6(fi, event, arg);
		return;
	}
	FUNC3(skb);

	if (FUNC12(FLG_PEND_REL, &st->l2.flag))
		FUNC5(fi, event, arg);

	if (FUNC12(FLG_L3_INIT, &st->l2.flag)) {
		pr = DL_ESTABLISH | CONFIRM;
	} else if (st->l2.vs != st->l2.va) {
		FUNC8(&st->l2.i_queue);
		pr = DL_ESTABLISH | INDICATION;
	}

	FUNC9(st, 5);

	st->l2.vr = 0;
	st->l2.vs = 0;
	st->l2.va = 0;
	st->l2.sow = 0;
	FUNC1(fi, ST_L2_7);
	FUNC0(&st->l2.t203, st->l2.T203, EV_L2_T203, NULL, 4);

	if (pr != -1)
		st->l2.l2l3(st, pr, NULL);

	if (!FUNC7(&st->l2.i_queue) && FUNC2(st))
		st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
}