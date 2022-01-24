#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int* data; } ;
struct Layer2 {int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; int /*<<< orphan*/  flag; } ;
struct PStack {struct Layer2 l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_ORIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,struct PStack*) ; 
 int PH_PULL ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 scalar_t__ FUNC3 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC4 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC7 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct Layer2*) ; 
 scalar_t__ FUNC9 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC11 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC13 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int PollFlag, rsp, rnr = 0;
	unsigned int nr;
	struct Layer2 *l2 = &st->l2;

	rsp = *skb->data & 0x2;
	if (FUNC18(FLG_ORIG, &l2->flag))
		rsp = !rsp;

	FUNC14(skb, FUNC8(l2));

	if (FUNC2(skb->data, st)) {
		FUNC12(l2);
		rnr = 1;
	} else
		FUNC4(l2);

	if (FUNC18(FLG_MOD128, &l2->flag)) {
		PollFlag = (skb->data[1] & 0x1) == 0x1;
		nr = skb->data[1] >> 1;
	} else {
		PollFlag = (skb->data[0] & 0x10);
		nr = (skb->data[0] >> 5) & 0x7;
	}
	FUNC5(skb);

	if (rsp && PollFlag) {
		if (FUNC9(st, nr)) {
			if (rnr) {
				FUNC11(st, 15);
			} else {
				FUNC16(st, 16);
				FUNC0(&l2->t203, l2->T203,
					    EV_L2_T203, NULL, 5);
				FUNC13(st, nr);
			}
			FUNC7(st, nr);
			FUNC1(fi, ST_L2_7);
			if (!FUNC15(&l2->i_queue) && FUNC3(st))
				st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
		} else
			FUNC10(fi);
	} else {
		if (!rsp && PollFlag)
			FUNC6(st);
		if (FUNC9(st, nr)) {
			FUNC13(st, nr);
		} else
			FUNC10(fi);
	}
}