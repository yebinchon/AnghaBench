#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct pt_regs {scalar_t__ nip; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdb_bpt_instr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAP ; 
 TYPE_1__ arch_kgdb_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pt_regs*) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC2(struct pt_regs *regs)
{
	if (FUNC1(regs))
		return 0;

	if (FUNC0(0, SIGTRAP, 0, regs) != 0)
		return 0;

	if (*(u32 *) (regs->nip) == *(u32 *) (&arch_kgdb_ops.gdb_bpt_instr))
		regs->nip += 4;

	return 1;
}