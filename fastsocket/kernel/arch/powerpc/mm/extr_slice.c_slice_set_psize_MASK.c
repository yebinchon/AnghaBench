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
typedef  int u64 ;
struct TYPE_2__ {int low_slices_psize; int high_slices_psize; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long SLICE_LOW_TOP ; 
 int /*<<< orphan*/  slice_convert_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 

void FUNC5(struct mm_struct *mm, unsigned long address,
		     unsigned int psize)
{
	unsigned long i, flags;
	u64 *p;

	FUNC2(&slice_convert_lock, flags);
	if (address < SLICE_LOW_TOP) {
		i = FUNC1(address);
		p = &mm->context.low_slices_psize;
	} else {
		i = FUNC0(address);
		p = &mm->context.high_slices_psize;
	}
	*p = (*p & ~(0xful << (i * 4))) | ((unsigned long) psize << (i * 4));
	FUNC3(&slice_convert_lock, flags);

#ifdef CONFIG_SPU_BASE
	spu_flush_all_slbs(mm);
#endif
}