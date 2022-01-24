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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERIFY_READ ; 
 scalar_t__ FUNC0 (unsigned long*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static unsigned long *
FUNC3(unsigned long *stackaddr, struct pt_regs *regs)
{
	unsigned long buf_stack;

	/* Also check accessibility of address */
	if (!FUNC1(VERIFY_READ, stackaddr, sizeof(unsigned long)))
		return NULL;

	if (FUNC0(&buf_stack, stackaddr, sizeof(unsigned long)))
		return NULL;

	/* Quick paranoia check */
	if (buf_stack & 3)
		return NULL;

	FUNC2(buf_stack);

	stackaddr++;

	return stackaddr;
}