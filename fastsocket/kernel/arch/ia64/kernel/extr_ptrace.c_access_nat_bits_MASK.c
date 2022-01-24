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
struct unw_frame_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNW_AR_UNAT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (struct pt_regs*,unsigned long) ; 
 unsigned long FUNC2 (struct pt_regs*,unsigned long) ; 
 scalar_t__ FUNC3 (struct unw_frame_info*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct unw_frame_info*,unsigned long,unsigned long*,char*) ; 
 scalar_t__ FUNC5 (struct unw_frame_info*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct unw_frame_info*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC7 (struct task_struct *child, struct pt_regs *pt,
		 struct unw_frame_info *info,
		 unsigned long *data, int write_access)
{
	unsigned long regnum, nat_bits, scratch_unat, dummy = 0;
	char nat = 0;

	if (write_access) {
		nat_bits = *data;
		scratch_unat = FUNC2(pt, nat_bits);
		if (FUNC5(info, UNW_AR_UNAT, scratch_unat) < 0) {
			FUNC0("ptrace: failed to set ar.unat\n");
			return -1;
		}
		for (regnum = 4; regnum <= 7; ++regnum) {
			FUNC4(info, regnum, &dummy, &nat);
			FUNC6(info, regnum, dummy,
				   (nat_bits >> regnum) & 1);
		}
	} else {
		if (FUNC3(info, UNW_AR_UNAT, &scratch_unat) < 0) {
			FUNC0("ptrace: failed to read ar.unat\n");
			return -1;
		}
		nat_bits = FUNC1(pt, scratch_unat);
		for (regnum = 4; regnum <= 7; ++regnum) {
			FUNC4(info, regnum, &dummy, &nat);
			nat_bits |= (nat != 0) << regnum;
		}
		*data = nat_bits;
	}
	return 0;
}