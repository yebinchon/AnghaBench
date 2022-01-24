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
struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l1hw ) (struct PStack*,int,int /*<<< orphan*/ *) ;TYPE_1__ l1m; int /*<<< orphan*/  Flags; int /*<<< orphan*/  hardware; } ;
struct PStack {TYPE_2__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L1_ACTIVATING ; 
 int /*<<< orphan*/  FLG_L1_T3RUN ; 
 int /*<<< orphan*/  FLG_L1_UINT ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int HW_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L1_F3 ; 
 scalar_t__ ST_L1_F6 ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC3(FLG_L1_T3RUN, &st->l1.Flags);	
	if (FUNC3(FLG_L1_ACTIVATING, &st->l1.Flags))
		FUNC1(st->l1.hardware);

#ifdef HISAX_UINTERFACE
	if (!test_bit(FLG_L1_UINT, &st->l1.Flags))
#endif
	if (st->l1.l1m.state != ST_L1_F6) {
		FUNC0(fi, ST_L1_F3);
		st->l1.l1hw(st, HW_ENABLE | REQUEST, NULL);
	}
}