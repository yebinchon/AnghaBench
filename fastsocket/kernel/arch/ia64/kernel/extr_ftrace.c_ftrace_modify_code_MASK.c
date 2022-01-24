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
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 int MCOUNT_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC2 (unsigned char*,void*,int) ; 
 scalar_t__ FUNC3 (void*,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC4(unsigned long ip, unsigned char *old_code,
		   unsigned char *new_code, int do_check)
{
	unsigned char replaced[MCOUNT_INSN_SIZE];

	/*
	 * Note: Due to modules and __init, code can
	 *  disappear and change, we need to protect against faulting
	 *  as well as code changing. We do this by using the
	 *  probe_kernel_* functions.
	 *
	 * No real locking needed, this code is run through
	 * kstop_machine, or before SMP starts.
	 */

	if (!do_check)
		goto skip_check;

	/* read the text we want to modify */
	if (FUNC2(replaced, (void *)ip, MCOUNT_INSN_SIZE))
		return -EFAULT;

	/* Make sure it is what we expect it to be */
	if (FUNC1(replaced, old_code, MCOUNT_INSN_SIZE) != 0)
		return -EINVAL;

skip_check:
	/* replace the text with the new text */
	if (FUNC3(((void *)ip), new_code, MCOUNT_INSN_SIZE))
		return -EPERM;
	FUNC0(ip, ip + MCOUNT_INSN_SIZE);

	return 0;
}