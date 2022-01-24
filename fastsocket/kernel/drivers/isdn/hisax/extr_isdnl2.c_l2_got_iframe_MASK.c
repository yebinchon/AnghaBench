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
struct Layer2 {int vr; unsigned int vs; unsigned int va; int /*<<< orphan*/  flag; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; int /*<<< orphan*/  (* l2l3 ) (struct PStack*,int,struct sk_buff*) ;} ;
struct PStack {struct Layer2 l2; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_ACK_PEND ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_OWN_BUSY ; 
 int /*<<< orphan*/  FLG_PEER_BUSY ; 
 int /*<<< orphan*/  FLG_REJEXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int INDICATION ; 
 int PH_PULL ; 
 int /*<<< orphan*/  REJ ; 
 int REQUEST ; 
 int /*<<< orphan*/  RR ; 
 int /*<<< orphan*/  RSP ; 
 scalar_t__ ST_L2_7 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*) ; 
 int FUNC4 (struct Layer2*) ; 
 int /*<<< orphan*/  FUNC5 (struct Layer2*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC8 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct PStack*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct PStack*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;
	struct Layer2 *l2 = &(st->l2);
	int PollFlag, ns, i;
	unsigned int nr;

	i = FUNC4(l2);
	if (FUNC17(FLG_MOD128, &l2->flag)) {
		PollFlag = ((skb->data[i + 1] & 0x1) == 0x1);
		ns = skb->data[i] >> 1;
		nr = (skb->data[i + 1] >> 1) & 0x7f;
	} else {
		PollFlag = (skb->data[i] & 0x10);
		ns = (skb->data[i] >> 1) & 0x7;
		nr = (skb->data[i] >> 5) & 0x7;
	}
	if (FUNC17(FLG_OWN_BUSY, &l2->flag)) {
		FUNC1(skb);
		if(PollFlag) FUNC3(st);
	} else if (l2->vr == ns) {
		(l2->vr)++;
		if(FUNC17(FLG_MOD128, &l2->flag))
			l2->vr %= 128;
		else
			l2->vr %= 8;
		FUNC15(FLG_REJEXC, &l2->flag);

		if (PollFlag)
			FUNC3(st);
		else
			FUNC16(FLG_ACK_PEND, &l2->flag);
		FUNC10(skb, FUNC5(l2, 0));
		st->l2.l2l3(st, DL_DATA | INDICATION, skb);
	} else {
		/* n(s)!=v(r) */
		FUNC1(skb);
		if (FUNC16(FLG_REJEXC, &l2->flag)) {
			if (PollFlag)
				FUNC3(st);
		} else {
			FUNC2(st, REJ, RSP, PollFlag);
			FUNC15(FLG_ACK_PEND, &l2->flag);
		}
	}

	if (FUNC6(st, nr)) {
		if (!FUNC17(FLG_PEER_BUSY, &st->l2.flag) && (fi->state == ST_L2_7)) {
			if (nr == st->l2.vs) {
				FUNC12(st, 13);
				FUNC0(&st->l2.t203, st->l2.T203,
						EV_L2_T203, NULL, 7);
			} else if (nr != st->l2.va)
				FUNC8(st, 14);
		}
		FUNC9(st, nr);
	} else {
		FUNC7(fi);
		return;
	}

	if (!FUNC11(&st->l2.i_queue) && (fi->state == ST_L2_7))
		st->l2.l2l1(st, PH_PULL | REQUEST, NULL);
	if (FUNC15(FLG_ACK_PEND, &st->l2.flag))
		FUNC2(st, RR, RSP, 0);
}