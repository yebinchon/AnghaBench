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
struct TYPE_2__ {int /*<<< orphan*/  (* l1l2 ) (struct PStack*,int,int /*<<< orphan*/ *) ;} ;
struct PStack {struct PStack* next; TYPE_1__ l1; } ;
struct IsdnCardState {int /*<<< orphan*/  HW_Flags; struct PStack* stlist; } ;

/* Variables and functions */
 int CONFIRM ; 
 int /*<<< orphan*/  FLG_L1_DBUSY ; 
 int INDICATION ; 
 int PH_DEACTIVATE ; 
 int PH_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct IsdnCardState *cs)
{
	struct PStack *st;

	st = cs->stlist;
	while (st) {
		if (FUNC3(FLG_L1_DBUSY, &cs->HW_Flags))
			st->l1.l1l2(st, PH_PAUSE | CONFIRM, NULL);
		st->l1.l1l2(st, PH_DEACTIVATE | INDICATION, NULL);
		st = st->next;
	}
	FUNC2(FLG_L1_DBUSY, &cs->HW_Flags);
}