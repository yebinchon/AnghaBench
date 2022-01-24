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
struct msi_bitmap {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct msi_bitmap *bmp, int num)
{
	unsigned long flags;
	int offset, order = FUNC1(num);

	FUNC3(&bmp->lock, flags);
	/*
	 * This is fast, but stricter than we need. We might want to add
	 * a fallback routine which does a linear search with no alignment.
	 */
	offset = FUNC0(bmp->bitmap, bmp->irq_count, order);
	FUNC4(&bmp->lock, flags);

	FUNC2("msi_bitmap: allocated 0x%x (2^%d) at offset 0x%x\n",
		 num, order, offset);

	return offset;
}