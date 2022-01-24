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
struct msi_bitmap {unsigned int irq_count; int /*<<< orphan*/  of_node; int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct msi_bitmap *bmp, unsigned int irq_count,
		     struct device_node *of_node)
{
	int size;

	if (!irq_count)
		return -EINVAL;

	size = FUNC0(irq_count) * sizeof(long);
	FUNC2("msi_bitmap: allocator bitmap size is 0x%x bytes\n", size);

	bmp->bitmap = FUNC4(size, GFP_KERNEL);
	if (!bmp->bitmap) {
		FUNC2("msi_bitmap: ENOMEM allocating allocator bitmap!\n");
		return -ENOMEM;
	}

	/* We zalloc'ed the bitmap, so all irqs are free by default */
	FUNC3(&bmp->lock);
	bmp->of_node = FUNC1(of_node);
	bmp->irq_count = irq_count;

	return 0;
}