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
struct TYPE_2__ {int /*<<< orphan*/  (* l1hw ) (struct PStack*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  Flags; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L1_UINT ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int HW_INFO3 ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L1_F6 ; 
 int /*<<< orphan*/  ST_L1_SYNC2 ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

#ifdef HISAX_UINTERFACE
	if (test_bit(FLG_L1_UINT, &st->l1.Flags))
		FsmChangeState(fi, ST_L1_SYNC2);
	else
#endif
		FUNC0(fi, ST_L1_F6);
	st->l1.l1hw(st, HW_INFO3 | REQUEST, NULL);
}