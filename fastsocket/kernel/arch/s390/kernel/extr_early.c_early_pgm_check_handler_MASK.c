#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct exception_table_entry {int fixup; } ;
struct TYPE_3__ {unsigned long addr; } ;
struct TYPE_4__ {TYPE_1__ program_old_psw; } ;

/* Variables and functions */
 int PSW_ADDR_AMODE ; 
 unsigned long PSW_ADDR_INSN ; 
 TYPE_2__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct exception_table_entry* FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long addr;
	const struct exception_table_entry *fixup;

	addr = S390_lowcore.program_old_psw.addr;
	fixup = FUNC1(addr & PSW_ADDR_INSN);
	if (!fixup)
		FUNC0(0);
	S390_lowcore.program_old_psw.addr = fixup->fixup | PSW_ADDR_AMODE;
}