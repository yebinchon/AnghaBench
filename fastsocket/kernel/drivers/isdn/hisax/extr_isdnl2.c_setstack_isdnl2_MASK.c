#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  printdebug; scalar_t__ userint; struct PStack* userdata; scalar_t__ debug; int /*<<< orphan*/  state; int /*<<< orphan*/ * fsm; } ;
struct TYPE_7__ {int /*<<< orphan*/  t203; TYPE_4__ l2m; int /*<<< orphan*/  t200; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  flag; scalar_t__ debug; int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  l3l2; } ;
struct TYPE_5__ {int /*<<< orphan*/  l1l2; } ;
struct PStack {TYPE_3__ l2; TYPE_2__ l3; TYPE_1__ l1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ST_L2_1 ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  isdnl2_l1l2 ; 
 int /*<<< orphan*/  isdnl2_l3l2 ; 
 int /*<<< orphan*/  l2fsm ; 
 int /*<<< orphan*/  l2m_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct PStack *st, char *debug_id)
{
	FUNC3(&st->l2.lock);
	st->l1.l1l2 = isdnl2_l1l2;
	st->l3.l3l2 = isdnl2_l3l2;

	FUNC2(&st->l2.i_queue);
	FUNC2(&st->l2.ui_queue);
	FUNC1(&st->l2);
	st->l2.debug = 0;

	st->l2.l2m.fsm = &l2fsm;
	if (FUNC5(FLG_LAPB, &st->l2.flag))
		st->l2.l2m.state = ST_L2_4;
	else
	st->l2.l2m.state = ST_L2_1;
	st->l2.l2m.debug = 0;
	st->l2.l2m.userdata = st;
	st->l2.l2m.userint = 0;
	st->l2.l2m.printdebug = l2m_debug;
	FUNC4(st->l2.debug_id, debug_id);

	FUNC0(&st->l2.l2m, &st->l2.t200);
	FUNC0(&st->l2.l2m, &st->l2.t203);
}