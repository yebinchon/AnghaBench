#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
struct TYPE_11__ {int /*<<< orphan*/  ld; TYPE_1__ w; } ;
typedef  TYPE_5__ mathemu_ldcv ;
struct TYPE_9__ {TYPE_2__* fprs; } ;
struct TYPE_10__ {TYPE_3__ fp_regs; } ;
struct TYPE_12__ {TYPE_4__ thread; } ;
struct TYPE_8__ {int /*<<< orphan*/  ui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_EX_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QA ; 
 int /*<<< orphan*/  QB ; 
 int _fex ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int) ; 

__attribute__((used)) static int FUNC6 (struct pt_regs *regs, int rx, int ry) {
        FUNC1(QA); FUNC1(QB);
        FP_DECL_EX;
	mathemu_ldcv cvt;
        int IR;

        cvt.w.high = current->thread.fp_regs.fprs[rx].ui;
        cvt.w.low = current->thread.fp_regs.fprs[rx+2].ui;
        FUNC4(QA, &cvt.ld);
        cvt.w.high = current->thread.fp_regs.fprs[ry].ui;
        cvt.w.low = current->thread.fp_regs.fprs[ry+2].ui;
        FUNC3(QB, &cvt.ld);
        FUNC0(IR, QA, QB, 3);
        /*
         * IR == -1 if DA < DB, IR == 0 if DA == DB,
         * IR == 1 if DA > DB and IR == 3 if unorderded
         */
        FUNC5(regs, (IR == -1) ? 1 : (IR == 1) ? 2 : IR);
        if (IR == 3)
                FUNC2 (FP_EX_INVALID);
        return _fex;
}