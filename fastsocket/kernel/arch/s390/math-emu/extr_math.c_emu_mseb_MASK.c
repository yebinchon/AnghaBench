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
struct TYPE_6__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {float f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  SA ; 
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  SC ; 
 int /*<<< orphan*/  SR ; 
 int _fex ; 
 TYPE_4__* current ; 

__attribute__((used)) static int FUNC5 (struct pt_regs *regs, int rx, float *val, int rz) {
        FUNC0(SA); FUNC0(SB); FUNC0(SC); FUNC0(SR);
        FP_DECL_EX;
        int mode;

	mode = current->thread.fp_regs.fpc & 3;
        FUNC4(SA, &current->thread.fp_regs.fprs[rx].f);
        FUNC4(SB, val);
        FUNC4(SC, &current->thread.fp_regs.fprs[rz].f);
        FUNC1(SR, SA, SB);
        FUNC3(SR, SR, SC);
	FUNC2(&current->thread.fp_regs.fprs[rz].f, SR);
        return _fex;
}