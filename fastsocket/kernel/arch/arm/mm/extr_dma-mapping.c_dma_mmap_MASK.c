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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int /*<<< orphan*/  vm_page_prot; } ;
struct device {int dummy; } ;
struct arm_vm_region {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_pages; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENXIO ; 
 unsigned long PAGE_SHIFT ; 
 struct arm_vm_region* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  consistent_head ; 
 int /*<<< orphan*/  consistent_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vm_area_struct*,unsigned long,scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct vm_area_struct *vma,
		    void *cpu_addr, dma_addr_t dma_addr, size_t size)
{
	int ret = -ENXIO;
#ifdef CONFIG_MMU
	unsigned long flags, user_size, kern_size;
	struct arm_vm_region *c;

	user_size = (vma->vm_end - vma->vm_start) >> PAGE_SHIFT;

	spin_lock_irqsave(&consistent_lock, flags);
	c = arm_vm_region_find(&consistent_head, (unsigned long)cpu_addr);
	spin_unlock_irqrestore(&consistent_lock, flags);

	if (c) {
		unsigned long off = vma->vm_pgoff;

		kern_size = (c->vm_end - c->vm_start) >> PAGE_SHIFT;

		if (off < kern_size &&
		    user_size <= (kern_size - off)) {
			ret = remap_pfn_range(vma, vma->vm_start,
					      page_to_pfn(c->vm_pages) + off,
					      user_size << PAGE_SHIFT,
					      vma->vm_page_prot);
		}
	}
#endif	/* CONFIG_MMU */

	return ret;
}