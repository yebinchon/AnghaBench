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
struct vm_fault {struct page* page; scalar_t__ virtual_address; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int GFP_USER ; 
 int VM_FAULT_OOM ; 
 int __GFP_DMA32 ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page;

	FUNC2(3, "fault: fault @ %08lx [vma %08lx-%08lx]\n",
		(unsigned long)vmf->virtual_address,
		vma->vm_start, vma->vm_end);

	page = FUNC0(GFP_USER | __GFP_DMA32);
	if (!page)
		return VM_FAULT_OOM;
	FUNC1(page, (unsigned long)vmf->virtual_address);
	vmf->page = page;

	return 0;
}