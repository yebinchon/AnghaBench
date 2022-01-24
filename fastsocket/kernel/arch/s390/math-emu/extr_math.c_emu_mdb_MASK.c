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
struct TYPE_5__ {int fpc; TYPE_3__* fprs; } ;
struct TYPE_6__ {TYPE_1__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {double d; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA ; 
 int /*<<< orphan*/  DB ; 
 int /*<<< orphan*/  DR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*) ; 
 int _fex ; 
 TYPE_4__* current ; 

__attribute__((used)) static int FUNC4 (struct pt_regs *regs, int rx, double *val) {
        FUNC0(DA); FUNC0(DB); FUNC0(DR);
        FP_DECL_EX;
        int mode;

	mode = current->thread.fp_regs.fpc & 3;
        FUNC3(DA, &current->thread.fp_regs.fprs[rx].d);
        FUNC3(DB, val);
        FUNC1(DR, DA, DB);
	FUNC2(&current->thread.fp_regs.fprs[rx].d, DR);
        return _fex;
}