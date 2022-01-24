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
struct tid_info {unsigned int ntids; int /*<<< orphan*/  tids_in_use; TYPE_1__* tid_tab; } ;
struct t3cdev {scalar_t__ type; } ;
struct sk_buff {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct TYPE_4__ {struct tid_info tid_maps; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ T3A ; 
 TYPE_2__* FUNC1 (struct t3cdev*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct t3cdev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct t3cdev*,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 

void FUNC9(struct t3cdev *tdev, void *ctx, unsigned int tid)
{
	struct tid_info *t = &(FUNC1(tdev))->tid_maps;

	FUNC0(tid >= t->ntids);
	if (tdev->type == T3A)
		(void)FUNC4(&t->tid_tab[tid].ctx, ctx, NULL);
	else {
		struct sk_buff *skb;

		skb = FUNC2(sizeof(struct cpl_tid_release), GFP_ATOMIC);
		if (FUNC7(skb)) {
			FUNC8(skb, tid);
			FUNC5(tdev, skb);
			t->tid_tab[tid].ctx = NULL;
		} else
			FUNC6(tdev, tid);
	}
	FUNC3(&t->tids_in_use);
}