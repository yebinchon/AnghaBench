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
typedef  int /*<<< orphan*/  val ;
struct task_struct {int dummy; } ;
struct switch_stack {int dummy; } ;
struct pt_regs {scalar_t__ ar_bspstore; } ;

/* Variables and functions */
 long EIO ; 
 int IA64_RBS_OFFSET ; 
 int FUNC0 (struct task_struct*,unsigned long,long*,int,int) ; 
 scalar_t__ FUNC1 (unsigned long*) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long*) ; 
 long* FUNC3 (unsigned long*,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct switch_stack*,unsigned long*,unsigned long*,long,unsigned long*) ; 
 struct pt_regs* FUNC6 (struct task_struct*) ; 

long
FUNC7 (struct task_struct *child, struct switch_stack *child_stack,
	   unsigned long user_rbs_end, unsigned long addr, long val)
{
	unsigned long *bspstore, *krbs, regnum, *laddr;
	unsigned long *urbs_end = (long *) user_rbs_end;
	struct pt_regs *child_regs;

	laddr = (unsigned long *) addr;
	child_regs = FUNC6(child);
	bspstore = (unsigned long *) child_regs->ar_bspstore;
	krbs = (unsigned long *) child + IA64_RBS_OFFSET/8;
	if (FUNC4(addr, (unsigned long) bspstore,
			  (unsigned long) urbs_end))
	{
		/*
		 * Attempt to write the RBS in an area that's actually
		 * on the kernel RBS => write the corresponding bits
		 * in the kernel RBS.
		 */
		if (FUNC1(laddr))
			FUNC5(child, child_stack, krbs, laddr, val,
				 urbs_end);
		else {
			if (laddr < urbs_end) {
				regnum = FUNC2(bspstore, laddr);
				*FUNC3(krbs, regnum) = val;
			}
		}
	} else if (FUNC0(child, addr, &val, sizeof(val), 1)
		   != sizeof(val))
		return -EIO;
	return 0;
}