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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int size ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int n, unsigned long val)
{
	unsigned int instrs[2];
	unsigned long (*code)(unsigned long);
#ifdef CONFIG_PPC64
	unsigned long opd[3];

	opd[0] = (unsigned long)instrs;
	opd[1] = 0;
	opd[2] = 0;
	code = (unsigned long (*)(unsigned long)) opd;
#else
	code = (unsigned long (*)(unsigned long)) instrs;
#endif

	instrs[0] = 0x7c6003a6 + ((n & 0x1F) << 16) + ((n & 0x3e0) << 6);
	instrs[1] = 0x4e800020;
	FUNC2(instrs);
	FUNC2(instrs+1);

	if (FUNC1(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC3();

		code(val);

		FUNC3();
		/* wait a little while to see if we get a machine check */
		FUNC0(200);
		n = size;
	}
}