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
struct vm_struct {unsigned long size; unsigned long nr_pages; scalar_t__ phys_addr; int /*<<< orphan*/ * pages; void* addr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VM_IOREMAP ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (unsigned long) ; 
 struct vm_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

struct vm_struct *FUNC5(unsigned long size)
{
	int order;
	unsigned long virt;
	unsigned long nr_pages;
	struct vm_struct *area;

	order = FUNC2(size);
	virt = FUNC0(GFP_KERNEL, order);
	if (virt == 0)
		goto err0;
	nr_pages = 1 << order;
	FUNC4(virt, nr_pages);

	area = FUNC3(sizeof(*area), GFP_KERNEL);
	if (area == NULL)
		goto err1;

	area->flags = VM_IOREMAP;
	area->addr = (void *)virt;
	area->size = size;
	area->pages = NULL;
	area->nr_pages = nr_pages;
	area->phys_addr = 0;	/* xenbus_map_ring_valloc uses this field!  */

	return area;

err1:
	FUNC1(virt, order);
err0:
	return NULL;
}