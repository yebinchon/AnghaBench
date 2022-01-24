#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ vs; scalar_t__ va; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; int /*<<< orphan*/  (* l2l3 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; scalar_t__ sow; scalar_t__ vr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {int state; struct PStack* userdata; } ;

/* Variables and functions */
 int DL_ESTABLISH ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int INDICATION ; 
 int MDL_ERROR ; 
 int PH_PULL ; 
 int REQUEST ; 
 int /*<<< orphan*/  RSP ; 
 int ST_L2_7 ; 
 int ST_L2_8 ; 
 int UA ; 
 scalar_t__ FUNC2 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct PStack*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int est = 0, state;

	state = fi->state;

	FUNC5(st, UA | FUNC4(st, skb), RSP);

	st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'F');

	if (st->l2.vs != st->l2.va) {
		FUNC7(&st->l2.i_queue);
		est = 1;
	}

	FUNC3(&st->l2);
	st->l2.vs = 0;
	st->l2.va = 0;
	st->l2.vr = 0;
	st->l2.sow = 0;
	FUNC0(fi, ST_L2_7);
	FUNC8(st, 3);
	FUNC1(&st->l2.t203, st->l2.T203, EV_L2_T203, NULL, 3);

	if (est)
		st->l2.l2l3(st, DL_ESTABLISH | INDICATION, NULL);

	if ((ST_L2_7==state) || (ST_L2_8 == state))
		if (!FUNC6(&st->l2.i_queue) && FUNC2(st))
			st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
}