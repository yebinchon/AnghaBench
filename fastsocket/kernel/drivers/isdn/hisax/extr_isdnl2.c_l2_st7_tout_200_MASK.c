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
struct TYPE_2__ {scalar_t__ rc; int /*<<< orphan*/  flag; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_L2_8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	if (FUNC3(FLG_LAPD, &st->l2.flag) &&
		FUNC3(FLG_DCHAN_BUSY, &st->l2.flag)) {
		FUNC0(&st->l2.t200, st->l2.T200, EV_L2_T200, NULL, 9);
		return;
	}
	FUNC2(FLG_T200_RUN, &st->l2.flag);
	st->l2.rc = 0;
	FUNC1(fi, ST_L2_8);

	FUNC4(st);
	st->l2.rc++;
}