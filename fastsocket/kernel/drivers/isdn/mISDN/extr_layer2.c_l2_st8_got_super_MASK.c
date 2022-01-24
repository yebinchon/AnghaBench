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
struct layer2 {int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_ORIG ; 
 scalar_t__ FUNC0 (int*,struct layer2*) ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 scalar_t__ FUNC1 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*) ; 
 scalar_t__ FUNC7 (struct layer2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct FsmInst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC12 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC14 (struct layer2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct layer2*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;
	int PollFlag, rsp, rnr = 0;
	unsigned int nr;

	rsp = *skb->data & 0x2;
	if (FUNC18(FLG_ORIG, &l2->flag))
		rsp = !rsp;

	FUNC15(skb, FUNC6(l2));

	if (FUNC0(skb->data, l2)) {
		FUNC13(l2);
		rnr = 1;
	} else
		FUNC2(l2);

	if (FUNC18(FLG_MOD128, &l2->flag)) {
		PollFlag = (skb->data[1] & 0x1) == 0x1;
		nr = skb->data[1] >> 1;
	} else {
		PollFlag = (skb->data[0] & 0x10);
		nr = (skb->data[0] >> 5) & 0x7;
	}
	FUNC3(skb);
	if (rsp && PollFlag) {
		if (FUNC7(l2, nr)) {
			if (rnr) {
				FUNC12(l2, 15);
			} else {
				FUNC17(l2, 16);
				FUNC8(&l2->t203, l2->T203,
					    EV_L2_T203, NULL, 5);
				FUNC14(l2, nr);
			}
			FUNC5(l2, nr);
			FUNC9(fi, ST_L2_7);
			if (FUNC16(&l2->i_queue) && FUNC1(l2))
				FUNC10(fi, EV_L2_ACK_PULL, NULL);
		} else
			FUNC11(fi);
	} else {
		if (!rsp && PollFlag)
			FUNC4(l2);
		if (FUNC7(l2, nr))
			FUNC14(l2, nr);
		else
			FUNC11(fi);
	}
}