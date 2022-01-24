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
struct layer1 {int /*<<< orphan*/  Flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  dch; int /*<<< orphan*/  (* dcb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct FsmInst {struct layer1* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER_ACT ; 
 int /*<<< orphan*/  FLG_L1_ACTIVATED ; 
 int /*<<< orphan*/  FLG_L1_ACTTIMER ; 
 int /*<<< orphan*/  FLG_L1_DEACTTIMER ; 
 int /*<<< orphan*/  FLG_L1_T3RUN ; 
 int /*<<< orphan*/  INFO3_P8 ; 
 int /*<<< orphan*/  ST_L1_F7 ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct layer1 *l1 = fi->userdata;

	FUNC0(fi, ST_L1_F7);
	l1->dcb(l1->dch, INFO3_P8);
	if (FUNC4(FLG_L1_DEACTTIMER, &l1->Flags))
		FUNC1(&l1->timer, 4);
	if (!FUNC6(FLG_L1_ACTIVATED, &l1->Flags)) {
		if (FUNC4(FLG_L1_T3RUN, &l1->Flags))
			FUNC1(&l1->timer, 3);
		FUNC2(&l1->timer, 110, EV_TIMER_ACT, NULL, 2);
		FUNC5(FLG_L1_ACTTIMER, &l1->Flags);
	}
}