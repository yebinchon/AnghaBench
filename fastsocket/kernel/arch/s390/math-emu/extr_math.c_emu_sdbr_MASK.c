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
struct TYPE_5__ {int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA ; 
 int /*<<< orphan*/  DB ; 
 int /*<<< orphan*/  DR ; 
 int /*<<< orphan*/  DR_c ; 
 int /*<<< orphan*/  DR_s ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int _fex ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct pt_regs *regs, int rx, int ry) {
        FUNC0(DA); FUNC0(DB); FUNC0(DR);
        FP_DECL_EX;
        int mode;

	mode = current->thread.fp_regs.fpc & 3;
        FUNC3(DA, &current->thread.fp_regs.fprs[rx].d);
        FUNC3(DB, &current->thread.fp_regs.fprs[ry].d);
        FUNC2(DR, DA, DB);
	FUNC1(&current->thread.fp_regs.fprs[rx].d, DR);
        FUNC4(regs, DR_c, DR_s);
        return _fex;
}