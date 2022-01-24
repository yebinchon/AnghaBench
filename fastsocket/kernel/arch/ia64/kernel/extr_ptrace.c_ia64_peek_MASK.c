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
struct switch_stack {int dummy; } ;
struct pt_regs {scalar_t__ ar_bspstore; } ;
typedef  int /*<<< orphan*/  ret ;

/* Variables and functions */
 long EIO ; 
 int IA64_RBS_OFFSET ; 
 size_t FUNC0 (struct task_struct*,unsigned long,long*,int,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct task_struct*,struct switch_stack*,unsigned long*,unsigned long*,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long*) ; 
 unsigned long* FUNC3 (unsigned long*) ; 
 long* FUNC4 (unsigned long*,unsigned long) ; 
 unsigned long FUNC5 (unsigned long*) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long,unsigned long) ; 
 struct pt_regs* FUNC7 (struct task_struct*) ; 

long
FUNC8 (struct task_struct *child, struct switch_stack *child_stack,
	   unsigned long user_rbs_end, unsigned long addr, long *val)
{
	unsigned long *bspstore, *krbs, regnum, *laddr, *urbs_end, *rnat_addr;
	struct pt_regs *child_regs;
	size_t copied;
	long ret;

	urbs_end = (long *) user_rbs_end;
	laddr = (unsigned long *) addr;
	child_regs = FUNC7(child);
	bspstore = (unsigned long *) child_regs->ar_bspstore;
	krbs = (unsigned long *) child + IA64_RBS_OFFSET/8;
	if (FUNC6(addr, (unsigned long) bspstore,
			  (unsigned long) urbs_end))
	{
		/*
		 * Attempt to read the RBS in an area that's actually
		 * on the kernel RBS => read the corresponding bits in
		 * the kernel RBS.
		 */
		rnat_addr = FUNC3(laddr);
		ret = FUNC1(child, child_stack, krbs, rnat_addr, urbs_end);

		if (laddr == rnat_addr) {
			/* return NaT collection word itself */
			*val = ret;
			return 0;
		}

		if (((1UL << FUNC5(laddr)) & ret) != 0) {
			/*
			 * It is implementation dependent whether the
			 * data portion of a NaT value gets saved on a
			 * st8.spill or RSE spill (e.g., see EAS 2.6,
			 * 4.4.4.6 Register Spill and Fill).  To get
			 * consistent behavior across all possible
			 * IA-64 implementations, we return zero in
			 * this case.
			 */
			*val = 0;
			return 0;
		}

		if (laddr < urbs_end) {
			/*
			 * The desired word is on the kernel RBS and
			 * is not a NaT.
			 */
			regnum = FUNC2(bspstore, laddr);
			*val = *FUNC4(krbs, regnum);
			return 0;
		}
	}
	copied = FUNC0(child, addr, &ret, sizeof(ret), 0);
	if (copied != sizeof(ret))
		return -EIO;
	*val = ret;
	return 0;
}