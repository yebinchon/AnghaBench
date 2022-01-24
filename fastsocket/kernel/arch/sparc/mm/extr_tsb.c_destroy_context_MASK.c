#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * tsb_block; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned long FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 
 unsigned long MM_NUM_TSBS ; 
 int /*<<< orphan*/  ctx_alloc_lock ; 
 unsigned long* mmu_context_bmap ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mm_struct *mm)
{
	unsigned long flags, i;

	for (i = 0; i < MM_NUM_TSBS; i++)
		FUNC4(&mm->context.tsb_block[i]);

	FUNC2(&ctx_alloc_lock, flags);

	if (FUNC1(mm->context)) {
		unsigned long nr = FUNC0(mm->context);
		mmu_context_bmap[nr>>6] &= ~(1UL << (nr & 63));
	}

	FUNC3(&ctx_alloc_lock, flags);
}