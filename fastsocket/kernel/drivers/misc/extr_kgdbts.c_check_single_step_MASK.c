#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  NUMREGBYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 int /*<<< orphan*/  kgdbts_regs ; 
 unsigned long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 

__attribute__((used)) static int FUNC6(char *put_str, char *arg)
{
	unsigned long addr = FUNC4(arg);
	/*
	 * From an arch indepent point of view the instruction pointer
	 * should be on a different instruction
	 */
	FUNC3(&put_str[1], (char *)kgdbts_gdb_regs,
		 NUMREGBYTES);
	FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
	FUNC5("Singlestep stopped at IP: %lx\n",
		   FUNC2(&kgdbts_regs));
	if (FUNC2(&kgdbts_regs) == addr) {
		FUNC0("kgdbts: SingleStep failed at %lx\n",
			   FUNC2(&kgdbts_regs));
		return 1;
	}

	return 0;
}