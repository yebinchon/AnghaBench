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
 char* REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 char* FUNC1 (unsigned long,unsigned long*,unsigned long*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tmpstr ; 

__attribute__((used)) static void FUNC5(unsigned long address, const char *mid,
			      const char *after)
{
	char *modname;
	const char *name = NULL;
	unsigned long offset, size;

	FUNC2(REG, address);
	if (FUNC3(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC4();
		name = FUNC1(address, &size, &offset, &modname,
				       tmpstr);
		FUNC4();
		/* wait a little while to see if we get a machine check */
		FUNC0(200);
	}

	catch_memory_errors = 0;

	if (name) {
		FUNC2("%s%s+%#lx/%#lx", mid, name, offset, size);
		if (modname)
			FUNC2(" [%s]", modname);
	}
	FUNC2("%s", after);
}