#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_7__ {TYPE_1__* fprs; } ;
struct TYPE_6__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SA ; 
 int /*<<< orphan*/  SB ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int) ; 

__attribute__((used)) static int FUNC4 (struct pt_regs *regs, int rx, int ry) {
        FUNC1(SA); FUNC1(SB);
        int IR;

        FUNC2(SA, &current->thread.fp_regs.fprs[rx].f);
        FUNC2(SB, &current->thread.fp_regs.fprs[ry].f);
        FUNC0(IR, SA, SB, 3);
        /*
         * IR == -1 if DA < DB, IR == 0 if DA == DB,
         * IR == 1 if DA > DB and IR == 3 if unorderded
         */
        FUNC3(regs, (IR == -1) ? 1 : (IR == 1) ? 2 : IR);
        return 0;
}