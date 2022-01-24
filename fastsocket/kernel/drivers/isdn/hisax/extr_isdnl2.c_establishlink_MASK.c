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
typedef  int u_char ;
struct TYPE_2__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  t203; scalar_t__ rc; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_PEND_REL ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int SABM ; 
 int SABME ; 
 int /*<<< orphan*/  ST_L2_5 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct FsmInst *fi)
{
	struct PStack *st = fi->userdata;
	u_char cmd;

	FUNC2(&st->l2);
	st->l2.rc = 0;
	cmd = (FUNC7(FLG_MOD128, &st->l2.flag) ? SABME : SABM) | 0x10;
	FUNC5(st, cmd, CMD);
	FUNC1(&st->l2.t203, 1);
	FUNC4(st, 1);
	FUNC6(FLG_PEND_REL, &st->l2.flag);
	FUNC3(st);
	FUNC0(fi, ST_L2_5);
}