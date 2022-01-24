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
struct TYPE_2__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  (* l1hw ) (struct PStack*,int,int /*<<< orphan*/ *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMER3 ; 
 int /*<<< orphan*/  FLG_L1_ACTIVATING ; 
 int /*<<< orphan*/  FLG_L1_T3RUN ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int HW_INFO3 ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L1_F3 ; 
 int /*<<< orphan*/  ST_L1_F4 ; 
 int /*<<< orphan*/  TIMER3_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	if (FUNC4(FLG_L1_ACTIVATING, &st->l1.Flags)) {
		FUNC0(fi, ST_L1_F4);
		st->l1.l1hw(st, HW_INFO3 | REQUEST, NULL);
		FUNC1(&st->l1.timer, TIMER3_VALUE, EV_TIMER3, NULL, 2);
		FUNC3(FLG_L1_T3RUN, &st->l1.Flags);
	} else
		FUNC0(fi, ST_L1_F3);
}