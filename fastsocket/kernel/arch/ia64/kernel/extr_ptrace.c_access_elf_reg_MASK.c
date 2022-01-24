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

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ; 
 int FUNC3 (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ; 
 int FUNC4 (struct task_struct*,struct unw_frame_info*,unsigned long,unsigned long*,int) ; 

__attribute__((used)) static int
FUNC5(struct task_struct *target, struct unw_frame_info *info,
		unsigned long addr, unsigned long *data, int write_access)
{
	if (addr >= FUNC1(1) && addr <= FUNC1(15))
		return FUNC4(target, info, addr, data, write_access);
	else if (addr >= FUNC0(0) && addr <= FUNC0(7))
		return FUNC3(target, info, addr, data, write_access);
	else
		return FUNC2(target, info, addr, data, write_access);
}