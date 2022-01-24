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
 int /*<<< orphan*/  FLG_L1_ACTIVATING ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int HW_ENABLE ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_L1_F3 ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC0(fi, ST_L1_F3);
	if (FUNC2(FLG_L1_ACTIVATING, &st->l1.Flags))
		st->l1.l1hw(st, HW_ENABLE | REQUEST, NULL);
}