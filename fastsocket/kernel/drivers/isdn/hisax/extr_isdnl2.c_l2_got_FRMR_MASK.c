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
struct sk_buff {int* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int INDICATION ; 
 scalar_t__ FUNC0 (int*) ; 
 int MDL_ERROR ; 
 scalar_t__ ST_L2_7 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	struct sk_buff *skb = arg;

	FUNC4(skb, FUNC3(&st->l2) + 1);

	if (!(skb->data[0] & 1) || ((skb->data[0] & 3) == 1) ||		/* I or S */
	    (FUNC0(skb->data) && (fi->state == ST_L2_7))) {
		st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'K');
		FUNC2(fi);
		FUNC6(FLG_L3_INIT, &st->l2.flag);
	}
	FUNC1(skb);
}