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
struct TYPE_2__ {int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  flag; int /*<<< orphan*/  i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int PH_DEACTIVATE ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 scalar_t__ FUNC1 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;

	if (FUNC1(st, skb)) {
		FUNC4(st, 7);
	 	if (!FUNC6(FLG_L3_INIT, &st->l2.flag))
			FUNC2(&st->l2.i_queue);
		if (FUNC6(FLG_LAPB, &st->l2.flag))
			st->l2.l2l1(st, PH_DEACTIVATE | REQUEST, NULL);
		FUNC3(st);
		FUNC0(fi, ST_L2_4);
	}
}