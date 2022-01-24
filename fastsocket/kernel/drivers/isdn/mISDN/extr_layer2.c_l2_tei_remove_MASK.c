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
struct layer2 {int /*<<< orphan*/  t203; int /*<<< orphan*/  tei; int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_RELEASE_IND ; 
 int /*<<< orphan*/  GROUP_TEI ; 
 int /*<<< orphan*/  ST_L2_1 ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	FUNC4(&l2->i_queue);
	FUNC4(&l2->ui_queue);
	FUNC0(l2);
	l2->tei = GROUP_TEI;
	FUNC5(l2, 17);
	FUNC3(&l2->t203, 19);
	FUNC1(l2, DL_RELEASE_IND, 0, NULL);
/*	mISDN_queue_data(&l2->inst, l2->inst.id | MSG_BROADCAST,
 *		MGR_SHORTSTATUS_IND, SSTATUS_L2_RELEASED,
 *		0, NULL, 0);
 */
	FUNC2(fi, ST_L2_1);
}