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
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 () ; 
 unsigned long FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  termch ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,char*,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	int type = FUNC1();
	unsigned long addr;
	static char tmp[64];

	switch (type) {
	case 'a':
		if (FUNC4(&addr))
			FUNC7(addr, ": ", "\n");
		termch = 0;
		break;
	case 's':
		FUNC0(tmp, 64);
		if (FUNC5(bus_error_jmp) == 0) {
			catch_memory_errors = 1;
			FUNC6();
			addr = FUNC2(tmp);
			if (addr)
				FUNC3("%s: %lx\n", tmp, addr);
			else
				FUNC3("Symbol '%s' not found.\n", tmp);
			FUNC6();
		}
		catch_memory_errors = 0;
		termch = 0;
		break;
	}
}