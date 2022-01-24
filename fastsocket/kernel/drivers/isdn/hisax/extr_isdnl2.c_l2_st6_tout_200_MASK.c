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
struct TYPE_4__ {scalar_t__ rc; scalar_t__ N200; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; int /*<<< orphan*/  flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CONFIRM ; 
 int DISC ; 
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int MDL_ERROR ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	if (FUNC6(FLG_LAPD, &st->l2.flag) &&
		FUNC6(FLG_DCHAN_BUSY, &st->l2.flag)) {
		FUNC0(&st->l2.t200, st->l2.T200, EV_L2_T200, NULL, 9);
	} else if (st->l2.rc == st->l2.N200) {
		FUNC1(fi, ST_L2_4);
		FUNC5(FLG_T200_RUN, &st->l2.flag);
		st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'H');
		FUNC2(st, CONFIRM);
	} else {
		st->l2.rc++;
		FUNC0(&st->l2.t200, st->l2.T200, EV_L2_T200,
			    NULL, 9);
		FUNC3(st, DISC | 0x10, CMD);
	}
}