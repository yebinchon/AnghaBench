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
struct sk_buff {int* data; } ;
struct Layer2 {unsigned int vs; unsigned int va; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; int /*<<< orphan*/  t203; int /*<<< orphan*/  T203; int /*<<< orphan*/  l2m; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {struct Layer2 l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_ORIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int INDICATION ; 
 scalar_t__ FUNC3 (int*,struct PStack*) ; 
 scalar_t__ FUNC4 (int*,struct PStack*) ; 
 int MDL_ERROR ; 
 int PH_PULL ; 
 int REJ ; 
 int REQUEST ; 
 int RNR ; 
 int RR ; 
 int /*<<< orphan*/  FUNC5 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC8 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC13 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC15 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	int PollFlag, rsp, typ = RR;
	unsigned int nr;
	struct Layer2 *l2 = &st->l2;

	rsp = *skb->data & 0x2;
	if (FUNC21(FLG_ORIG, &l2->flag))
		rsp = !rsp;

	FUNC16(skb, FUNC9(l2));
	if (FUNC4(skb->data, st)) {
		FUNC14(l2);
		typ = RNR;
	} else
		FUNC5(l2);
	if (FUNC3(skb->data, st))
		typ = REJ;

	if (FUNC21(FLG_MOD128, &l2->flag)) {
		PollFlag = (skb->data[1] & 0x1) == 0x1;
		nr = skb->data[1] >> 1;
	} else {
		PollFlag = (skb->data[0] & 0x10);
		nr = (skb->data[0] >> 5) & 0x7;
	}
	FUNC6(skb);

	if (PollFlag) {
		if (rsp)
			st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'A');
		else
			FUNC7(st);
	}
	if (FUNC11(st, nr)) {
		if (typ == REJ) {
			FUNC15(st, nr);
			FUNC8(st, nr);
			FUNC18(st, 10);
			if (FUNC0(&st->l2.t203, st->l2.T203,
					EV_L2_T203, NULL, 6))
				FUNC10(&st->l2.l2m, "Restart T203 ST7 REJ");
		} else if ((nr == l2->vs) && (typ == RR)) {
			FUNC15(st, nr);
			FUNC18(st, 11);
			FUNC2(&st->l2.t203, st->l2.T203,
					EV_L2_T203, NULL, 7);
		} else if ((l2->va != nr) || (typ == RNR)) {
			FUNC15(st, nr);
			if(typ != RR) FUNC1(&st->l2.t203, 9);
			FUNC13(st, 12);
		}
		if (!FUNC17(&st->l2.i_queue) && (typ == RR))
			st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
	} else
		FUNC12(fi);
}