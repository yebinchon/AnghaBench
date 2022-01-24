#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int /*<<< orphan*/  cause; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int /*<<< orphan*/ ,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAUSE_LocalProcErr ; 
 int /*<<< orphan*/  CC_SETUP_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,struct l3_process*) ; 

__attribute__((used)) static void
FUNC2(struct l3_process *pc, u_char pr, void *arg)
{
        pc->para.cause = CAUSE_LocalProcErr;
        FUNC0(pc, pr, NULL);
        pc->st->l3.l3l4(pc->st, CC_SETUP_ERR, pc);
}