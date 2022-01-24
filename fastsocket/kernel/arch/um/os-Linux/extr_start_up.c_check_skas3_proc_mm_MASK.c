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
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ disable_proc_mm ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int proc_mm ; 

__attribute__((used)) static inline void FUNC3(void)
{
	FUNC1("  - /proc/mm...");
	if (FUNC0("/proc/mm", W_OK) < 0)
		FUNC2("not found");
	else if (disable_proc_mm)
		FUNC1("found but disabled on command line\n");
	else {
		proc_mm = 1;
		FUNC1("found\n");
	}
}