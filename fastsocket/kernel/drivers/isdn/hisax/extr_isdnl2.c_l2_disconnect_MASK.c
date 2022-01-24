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
struct TYPE_2__ {int /*<<< orphan*/  t203; scalar_t__ rc; int /*<<< orphan*/  i_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int DISC ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ST_L2_6 ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct PStack *st = fi->userdata;

	FUNC5(&st->l2.i_queue);
	FUNC2(st);
	FUNC0(fi, ST_L2_6);
	st->l2.rc = 0;
	FUNC4(st, DISC | 0x10, CMD);
	FUNC1(&st->l2.t203, 1);
	FUNC3(st, 2);
}