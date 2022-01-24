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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  proc_mm ; 
 int /*<<< orphan*/  ptrace_faultinfo ; 
 int /*<<< orphan*/  ptrace_ldt ; 
 int skas_needs_stub ; 

void FUNC4(void)
{
	FUNC3("Checking for the skas3 patch in the host:\n");

	FUNC0();
	FUNC1();
	FUNC2();

	if (!proc_mm || !ptrace_faultinfo || !ptrace_ldt)
		skas_needs_stub = 1;
}