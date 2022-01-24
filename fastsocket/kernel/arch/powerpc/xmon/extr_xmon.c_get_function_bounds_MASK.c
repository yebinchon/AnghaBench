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
 char* FUNC0 (unsigned long,unsigned long*,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tmpstr ; 

__attribute__((used)) static void FUNC3(unsigned long pc, unsigned long *startp,
				unsigned long *endp)
{
	unsigned long size, offset;
	const char *name;

	*startp = *endp = 0;
	if (pc == 0)
		return;
	if (FUNC1(bus_error_jmp) == 0) {
		catch_memory_errors = 1;
		FUNC2();
		name = FUNC0(pc, &size, &offset, NULL, tmpstr);
		if (name != NULL) {
			*startp = pc - offset;
			*endp = pc - offset + size;
		}
		FUNC2();
	}
	catch_memory_errors = 0;
}