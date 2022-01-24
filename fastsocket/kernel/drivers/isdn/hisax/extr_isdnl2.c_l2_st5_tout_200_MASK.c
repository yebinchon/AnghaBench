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
struct TYPE_4__ {scalar_t__ rc; scalar_t__ N200; int /*<<< orphan*/  flag; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; int /*<<< orphan*/  (* l2l1 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  i_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int INDICATION ; 
 int MDL_ERROR ; 
 int PH_DEACTIVATE ; 
 int REQUEST ; 
 int SABM ; 
 int SABME ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	if (FUNC8(FLG_LAPD, &st->l2.flag) &&
		FUNC8(FLG_DCHAN_BUSY, &st->l2.flag)) {
		FUNC0(&st->l2.t200, st->l2.T200, EV_L2_T200, NULL, 9);
	} else if (st->l2.rc == st->l2.N200) {
		FUNC1(fi, ST_L2_4);
		FUNC7(FLG_T200_RUN, &st->l2.flag);
		FUNC3(&st->l2.i_queue);
		st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'G');
		if (FUNC8(FLG_LAPB, &st->l2.flag))
			st->l2.l2l1(st, PH_DEACTIVATE | REQUEST, NULL);
		FUNC4(st);
	} else {
		st->l2.rc++;
		FUNC0(&st->l2.t200, st->l2.T200, EV_L2_T200, NULL, 9);
		FUNC2(st, (FUNC8(FLG_MOD128, &st->l2.flag) ? SABME : SABM)
			    | 0x10, CMD);
	}
}