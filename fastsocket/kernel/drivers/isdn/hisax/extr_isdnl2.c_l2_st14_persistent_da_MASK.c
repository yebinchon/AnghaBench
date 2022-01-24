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
struct TYPE_2__ {int /*<<< orphan*/  (* l2l3 ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  flag; int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int DL_RELEASE ; 
 int /*<<< orphan*/  FLG_ESTAB_PEND ; 
 int INDICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;
	
	FUNC0(&st->l2.i_queue);
	FUNC0(&st->l2.ui_queue);
	if (FUNC2(FLG_ESTAB_PEND, &st->l2.flag))
		st->l2.l2l3(st, DL_RELEASE | INDICATION, NULL);
}