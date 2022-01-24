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
struct layer2 {scalar_t__ rc; scalar_t__ N200; int /*<<< orphan*/  flag; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	if (FUNC4(FLG_LAPD, &l2->flag) &&
		FUNC4(FLG_DCHAN_BUSY, &l2->flag)) {
		FUNC2(&l2->t200, l2->T200, EV_L2_T200, NULL, 9);
		return;
	}
	FUNC3(FLG_T200_RUN, &l2->flag);
	if (l2->rc == l2->N200) {
		FUNC1(l2, MDL_ERROR_IND, (void *) 'I');
		FUNC0(fi);
		FUNC3(FLG_L3_INIT, &l2->flag);
	} else {
		FUNC5(l2);
		l2->rc++;
	}
}