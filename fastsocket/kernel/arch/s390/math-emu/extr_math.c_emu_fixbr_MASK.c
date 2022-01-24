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
struct TYPE_10__ {int fpc; TYPE_2__* fprs; } ;
typedef  TYPE_4__ s390_fp_regs ;
struct TYPE_9__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
struct TYPE_11__ {TYPE_3__ w; int /*<<< orphan*/  ld; } ;
typedef  TYPE_5__ mathemu_ldcv ;
typedef  int /*<<< orphan*/  __s32 ;
struct TYPE_7__ {TYPE_4__ fp_regs; } ;
struct TYPE_12__ {TYPE_1__ thread; } ;
struct TYPE_8__ {int /*<<< orphan*/  ui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FP_RND_NEAREST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QA ; 
 int _fex ; 
 TYPE_6__* current ; 

__attribute__((used)) static int FUNC4 (struct pt_regs *regs, int rx, int ry, int mask) {
        s390_fp_regs *fp_regs = &current->thread.fp_regs;
        FUNC0(QA);
        FP_DECL_EX;
	mathemu_ldcv cvt;
        __s32 si;
        int mode;

	if (mask == 0)
		mode = fp_regs->fpc & 3;
	else if (mask == 1)
		mode = FP_RND_NEAREST;
	else
		mode = mask - 4;
        cvt.w.high = fp_regs->fprs[ry].ui;
        cvt.w.low = fp_regs->fprs[ry+2].ui;
        FUNC3(QA, &cvt.ld);
	FUNC2(QA);
	FUNC1(&cvt.ld, QA);
	fp_regs->fprs[rx].ui = cvt.w.high;
	fp_regs->fprs[rx+2].ui = cvt.w.low;
        return _fex;
}