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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  compat_long_t ;

/* Variables and functions */
 long EPERM ; 
#define  PPC_PTRACE_GETREGS 129 
#define  PPC_PTRACE_SETREGS 128 
 int /*<<< orphan*/  FUNC0 (long) ; 
 long FUNC1 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct task_struct *child, long request,
			      long addr, long data)
{
	switch (request) {
	case PPC_PTRACE_GETREGS:	/* Get GPRs 0 - 31. */
		return FUNC2(child,
					   FUNC3(current), 0,
					   0, 32 * sizeof(compat_long_t),
					   FUNC0(data));

	case PPC_PTRACE_SETREGS:	/* Set GPRs 0 - 31. */
		return FUNC1(child,
					     FUNC3(current), 0,
					     0, 32 * sizeof(compat_long_t),
					     FUNC0(data));
	}

	return -EPERM;
}