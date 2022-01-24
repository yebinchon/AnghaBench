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
typedef  int /*<<< orphan*/  u_char ;
struct l3_process {scalar_t__ N303; TYPE_2__* st; int /*<<< orphan*/  timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_2__*,int /*<<< orphan*/ ,struct l3_process*) ;} ;
struct TYPE_4__ {TYPE_1__ l3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NOSETUP_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_RELEASE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (struct l3_process*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct l3_process*) ; 

__attribute__((used)) static void
FUNC5(struct l3_process *pc, u_char pr, void *arg)
{
	if (pc->N303 > 0) {
		pc->N303--;
		FUNC0(&pc->timer);
		FUNC2(pc, pr, arg);
	} else {
		FUNC0(&pc->timer);
		FUNC1(pc, MT_RELEASE_COMPLETE, 102);
		pc->st->l3.l3l4(pc->st, CC_NOSETUP_RSP, pc);
		FUNC3(pc);
	}
}