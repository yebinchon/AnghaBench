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
struct TYPE_10__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
struct TYPE_11__ {TYPE_4__ w; int /*<<< orphan*/  ld; } ;
typedef  TYPE_5__ mathemu_ldcv ;
struct TYPE_8__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_9__ {TYPE_2__ fp_regs; } ;
struct TYPE_12__ {TYPE_3__ thread; } ;
struct TYPE_7__ {int /*<<< orphan*/  ui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QA ; 
 int /*<<< orphan*/  QB ; 
 int /*<<< orphan*/  QR ; 
 int /*<<< orphan*/  QR_c ; 
 int /*<<< orphan*/  QR_s ; 
 int _fex ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct pt_regs *regs, int rx, int ry) {
        FUNC0(QA); FUNC0(QB); FUNC0(QR);
        FP_DECL_EX;
	mathemu_ldcv cvt;
        int mode;

	mode = current->thread.fp_regs.fpc & 3;
        cvt.w.high = current->thread.fp_regs.fprs[rx].ui;
        cvt.w.low = current->thread.fp_regs.fprs[rx+2].ui;
        FUNC3(QA, &cvt.ld);
        cvt.w.high = current->thread.fp_regs.fprs[ry].ui;
        cvt.w.low = current->thread.fp_regs.fprs[ry+2].ui;
        FUNC3(QB, &cvt.ld);
        FUNC2(QR, QA, QB);
        FUNC1(&cvt.ld, QR);
        current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
        current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
        FUNC4(regs, QR_c, QR_s);
        return _fex;
}