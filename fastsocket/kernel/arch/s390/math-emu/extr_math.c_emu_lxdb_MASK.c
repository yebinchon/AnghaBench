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
struct TYPE_9__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
struct TYPE_11__ {TYPE_3__ w; int /*<<< orphan*/  ld; } ;
typedef  TYPE_5__ mathemu_ldcv ;
struct TYPE_10__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_8__ {TYPE_4__ fp_regs; } ;
struct TYPE_12__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int /*<<< orphan*/  ui; } ;

/* Variables and functions */
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  DA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  Q ; 
 int /*<<< orphan*/  QR ; 
 int _fex ; 
 TYPE_6__* current ; 

__attribute__((used)) static int FUNC5 (struct pt_regs *regs, int rx, double *val) {
        FUNC1(DA); FUNC2(QR);
	FP_DECL_EX;
	mathemu_ldcv cvt;
        int mode;

	mode = current->thread.fp_regs.fpc & 3;
        FUNC4(DA, val);
	FUNC0 (Q, D, 4, 2, QR, DA);
        FUNC3(&cvt.ld, QR);
        current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
        current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
        return _fex;
}