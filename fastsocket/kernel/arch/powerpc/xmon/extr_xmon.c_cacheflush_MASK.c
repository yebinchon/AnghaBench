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
 unsigned long L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ adrs ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char termch ; 

__attribute__((used)) static void FUNC7(void)
{
	int cmd;
	unsigned long nflush;

	cmd = FUNC3();
	if (cmd != 'i')
		termch = cmd;
	FUNC4((void *)&adrs);
	if (termch != '\n')
		termch = 0;
	nflush = 1;
	FUNC4(&nflush);
	nflush = (nflush + L1_CACHE_BYTES - 1) / L1_CACHE_BYTES;
	if (FUNC5(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC6();

		if (cmd != 'i') {
			for (; nflush > 0; --nflush, adrs += L1_CACHE_BYTES)
				FUNC1((void *) adrs);
		} else {
			for (; nflush > 0; --nflush, adrs += L1_CACHE_BYTES)
				FUNC2((void *) adrs);
		}
		FUNC6();
		/* wait a little while to see if we get a machine check */
		FUNC0(200);
	}
	catch_memory_errors = 0;
}