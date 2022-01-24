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
struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; scalar_t__ sow; scalar_t__ vr; scalar_t__ va; scalar_t__ vs; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ESTABLISH_IND ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  MDL_STATUS_UP_IND ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 int UA ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int FUNC1 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	struct sk_buff	*skb = arg;

	l2->vs = 0;
	l2->va = 0;
	l2->vr = 0;
	l2->sow = 0;
	FUNC0(l2);
	FUNC6(l2, NULL, UA | FUNC1(l2, skb), RSP);
	FUNC5(fi, ST_L2_7);
	FUNC4(&l2->t203, l2->T203, EV_L2_T203, NULL, 3);
	FUNC7(skb, 0);
	FUNC3(l2, DL_ESTABLISH_IND, skb);
	if (l2->tm)
		FUNC2(l2, MDL_STATUS_UP_IND, 0);
}