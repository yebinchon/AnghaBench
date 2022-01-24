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
struct TYPE_3__ {int /*<<< orphan*/  flag; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_1__ l2; TYPE_2__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int INDICATION ; 
 int MDL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*) ; 
 scalar_t__ FUNC1 (struct PStack*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct sk_buff *skb = arg;
	struct PStack *st = fi->userdata;

	if (FUNC1(st, skb))
		st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'B');
	else {
		st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'E');
		FUNC0(fi);
		FUNC4(FLG_L3_INIT, &st->l2.flag);
	}
}