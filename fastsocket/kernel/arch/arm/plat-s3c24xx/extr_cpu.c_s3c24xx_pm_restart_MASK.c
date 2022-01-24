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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char,char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(char mode, const char *cmd)
{
	if (mode != 's') {
		unsigned long flags;

		FUNC5(flags);
		FUNC0();
		FUNC1();

		FUNC2(mode, cmd);
		FUNC4(flags);
	}

	/* fallback, or unhandled */
	FUNC3(mode, cmd);
}