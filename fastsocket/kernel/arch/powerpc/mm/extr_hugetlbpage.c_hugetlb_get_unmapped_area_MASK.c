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
struct hstate {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long EINVAL ; 
 struct hstate* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct hstate*) ; 
 int /*<<< orphan*/ * mmu_huge_psizes ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,unsigned long,int,int,int /*<<< orphan*/ ) ; 

unsigned long FUNC4(struct file *file, unsigned long addr,
					unsigned long len, unsigned long pgoff,
					unsigned long flags)
{
	struct hstate *hstate = FUNC0(file);
	int mmu_psize = FUNC2(FUNC1(hstate));

	if (!mmu_huge_psizes[mmu_psize])
		return -EINVAL;
	return FUNC3(addr, len, flags, mmu_psize, 1, 0);
}