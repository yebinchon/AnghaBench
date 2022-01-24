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
struct TYPE_2__ {unsigned int unit; } ;
struct exception_table_entry {int insn; TYPE_1__ fixup; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct exception_table_entry*) ; 

__attribute__((used)) static void FUNC1(void *a, void *b, int size)
{
	struct exception_table_entry *ex_a = a, *ex_b = b;
	unsigned long addr_a = FUNC0(ex_a), addr_b = FUNC0(ex_b);
	unsigned int t = ex_a->fixup.unit;

	ex_a->fixup.unit = ex_b->fixup.unit;
	ex_b->fixup.unit = t;
	ex_a->insn = (int)(addr_b - (unsigned long)&ex_a->insn);
	ex_b->insn = (int)(addr_a - (unsigned long)&ex_b->insn);
}