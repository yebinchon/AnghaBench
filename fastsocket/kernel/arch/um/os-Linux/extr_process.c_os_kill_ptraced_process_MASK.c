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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_CONT ; 
 int /*<<< orphan*/  PTRACE_KILL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  __WALL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(int pid, int reap_child)
{
	FUNC1(pid, SIGKILL);
	FUNC2(PTRACE_KILL, pid);
	FUNC2(PTRACE_CONT, pid);
	if (reap_child)
		FUNC0(FUNC3(pid, NULL, __WALL));
}