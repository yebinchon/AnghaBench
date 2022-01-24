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
struct vm_area_struct {int vm_pgoff; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct resource {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int resource_size_t ;
typedef  enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 struct resource* FUNC0 (struct pci_dev*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct resource*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_dev *dev, struct vm_area_struct *vma,
			enum pci_mmap_state mmap_state, int write_combine)
{
	resource_size_t offset =
		((resource_size_t)vma->vm_pgoff) << PAGE_SHIFT;
	struct resource *rp;
	int ret;

	rp = FUNC0(dev, &offset, mmap_state);
	if (rp == NULL)
		return -EINVAL;

	vma->vm_pgoff = offset >> PAGE_SHIFT;
	vma->vm_page_prot = FUNC1(dev, rp,
						  vma->vm_page_prot,
						  mmap_state, write_combine);

	ret = FUNC2(vma, vma->vm_start, vma->vm_pgoff,
			       vma->vm_end - vma->vm_start, vma->vm_page_prot);

	return ret;
}