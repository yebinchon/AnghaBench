#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct slice_mask {int dummy; } ;
struct TYPE_2__ {unsigned int user_psize; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned int MMU_PAGE_4K ; 
 unsigned int MMU_PAGE_64K ; 
 int /*<<< orphan*/  FUNC0 (struct slice_mask,struct slice_mask) ; 
 int /*<<< orphan*/  FUNC1 (struct slice_mask,struct slice_mask) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct mm_struct*,unsigned long,unsigned long) ; 
 struct slice_mask FUNC3 (struct mm_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct slice_mask) ; 
 struct slice_mask FUNC5 (unsigned long,unsigned long) ; 

int FUNC6(struct mm_struct *mm, unsigned long addr,
			   unsigned long len)
{
	struct slice_mask mask, available;
	unsigned int psize = mm->context.user_psize;

	mask = FUNC5(addr, len);
	available = FUNC3(mm, psize);
#ifdef CONFIG_PPC_64K_PAGES
	/* We need to account for 4k slices too */
	if (psize == MMU_PAGE_64K) {
		struct slice_mask compat_mask;
		compat_mask = slice_mask_for_size(mm, MMU_PAGE_4K);
		or_mask(available, compat_mask);
	}
#endif

#if 0 /* too verbose */
	slice_dbg("is_hugepage_only_range(mm=%p, addr=%lx, len=%lx)\n",
		 mm, addr, len);
	slice_print_mask(" mask", mask);
	slice_print_mask(" available", available);
#endif
	return !FUNC1(mask, available);
}