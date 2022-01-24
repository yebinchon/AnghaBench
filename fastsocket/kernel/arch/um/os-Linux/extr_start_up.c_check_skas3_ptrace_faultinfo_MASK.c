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
struct ptrace_faultinfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  PTRACE_FAULTINFO ; 
 scalar_t__ disable_ptrace_faultinfo ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ptrace_faultinfo*) ; 
 int ptrace_faultinfo ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	struct ptrace_faultinfo fi;
	int pid, n;

	FUNC0("  - PTRACE_FAULTINFO...");
	pid = FUNC3();

	n = FUNC2(PTRACE_FAULTINFO, pid, 0, &fi);
	if (n < 0) {
		if (errno == EIO)
			FUNC0("not found\n");
		else
			FUNC1("not found");
	} else if (disable_ptrace_faultinfo)
		FUNC0("found but disabled on command line\n");
	else {
		ptrace_faultinfo = 1;
		FUNC0("found\n");
	}

	FUNC4(pid, 1, 1);
}