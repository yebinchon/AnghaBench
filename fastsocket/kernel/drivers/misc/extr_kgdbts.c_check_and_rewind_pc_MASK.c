#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMREGBYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 TYPE_1__ kgdbts_regs ; 
 unsigned long FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(char *put_str, char *arg)
{
	unsigned long addr = FUNC4(arg);
	int offset = 0;

	FUNC3(&put_str[1], (char *)kgdbts_gdb_regs,
		 NUMREGBYTES);
	FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
	FUNC6("Stopped at IP: %lx\n", FUNC2(&kgdbts_regs));
#ifdef CONFIG_X86
	/* On x86 a breakpoint stop requires it to be decremented */
	if (addr + 1 == kgdbts_regs.ip)
		offset = -1;
#endif
	if (FUNC5(arg, "silent") &&
		FUNC2(&kgdbts_regs) + offset != addr) {
		FUNC0("kgdbts: BP mismatch %lx expected %lx\n",
			   FUNC2(&kgdbts_regs) + offset, addr);
		return 1;
	}
#ifdef CONFIG_X86
	/* On x86 adjust the instruction pointer if needed */
	kgdbts_regs.ip += offset;
#endif
	return 0;
}