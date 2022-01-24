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
typedef  TYPE_3__ s390_fp_regs ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;
struct TYPE_6__ {TYPE_3__ fp_regs; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  f; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_regs*,int,int,int) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

int FUNC2(__u8 *opcode, struct pt_regs * regs) {
        s390_fp_regs *fp_regs = &current->thread.fp_regs;
        __u32 opc = *((__u32 *) opcode);
        __u32 *mem, *dxb;

        dxb = (__u32 *) FUNC0(regs, opc >> 16, opc >> 12, opc);
        mem = (__u32 *) (&fp_regs->fprs[(opc >> 20) & 0xf].f);
        FUNC1(mem[0], dxb);
	return 0;
}