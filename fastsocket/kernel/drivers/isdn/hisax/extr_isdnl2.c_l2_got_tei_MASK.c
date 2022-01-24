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
struct TYPE_2__ {long tei; int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 scalar_t__ ST_L2_3 ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	st->l2.tei = (long) arg;

	if (fi->state == ST_L2_3) {
		FUNC1(fi);
		FUNC3(FLG_L3_INIT, &st->l2.flag);
	} else
		FUNC0(fi, ST_L2_4);
	if (!FUNC2(&st->l2.ui_queue))
		FUNC4(st);
}