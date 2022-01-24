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
struct user_fpxregs_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  PTRACE_GETFPXREGS ; 
 scalar_t__ errno ; 
 scalar_t__ have_fpx_regs ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct user_fpxregs_struct*) ; 

void FUNC2(int pid)
{
	struct user_fpxregs_struct fpx_regs;
	int err;

	err = FUNC1(PTRACE_GETFPXREGS, pid, 0, &fpx_regs);
	if (!err)
		return;

	if (errno != EIO)
		FUNC0("check_ptrace : PTRACE_GETFPXREGS failed, errno = %d",
		      errno);

	have_fpx_regs = 0;
}