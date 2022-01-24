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
struct vm_area_struct {scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_start; } ;
struct mbcs_soft {int /*<<< orphan*/  gscr_addr; } ;
struct file {struct cx_dev* private_data; } ;
struct cx_dev {struct mbcs_soft* soft; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *fp, struct vm_area_struct *vma)
{
	struct cx_dev *cx_dev = fp->private_data;
	struct mbcs_soft *soft = cx_dev->soft;

	if (vma->vm_pgoff != 0)
		return -EINVAL;

	vma->vm_page_prot = FUNC1(vma->vm_page_prot);

	/* Remap-pfn-range will mark the range VM_IO and VM_RESERVED */
	if (FUNC2(vma,
			    vma->vm_start,
			    FUNC0(soft->gscr_addr) >> PAGE_SHIFT,
			    PAGE_SIZE,
			    vma->vm_page_prot))
		return -EAGAIN;

	return 0;
}