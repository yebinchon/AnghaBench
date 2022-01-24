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
 int /*<<< orphan*/  VERIFY_READ ; 
 int FUNC0 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int) ; 

__attribute__((used)) static int FUNC2(unsigned long long pc, unsigned long *result_opcode, int from_user_mode)
{
	int get_user_error;
	unsigned long aligned_pc;
	unsigned long opcode;

	if ((pc & 3) == 1) {
		/* SHmedia */
		aligned_pc = pc & ~3;
		if (from_user_mode) {
			if (!FUNC1(VERIFY_READ, aligned_pc, sizeof(unsigned long))) {
				get_user_error = -EFAULT;
			} else {
				get_user_error = FUNC0(opcode, (unsigned long *)aligned_pc);
				*result_opcode = opcode;
			}
			return get_user_error;
		} else {
			/* If the fault was in the kernel, we can either read
			 * this directly, or if not, we fault.
			*/
			*result_opcode = *(unsigned long *) aligned_pc;
			return 0;
		}
	} else if ((pc & 1) == 0) {
		/* SHcompact */
		/* TODO : provide handling for this.  We don't really support
		   user-mode SHcompact yet, and for a kernel fault, this would
		   have to come from a module built for SHcompact.  */
		return -EFAULT;
	} else {
		/* misaligned */
		return -EFAULT;
	}
}