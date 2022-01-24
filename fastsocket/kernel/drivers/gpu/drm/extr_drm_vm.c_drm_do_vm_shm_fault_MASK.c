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
struct vm_area_struct {unsigned long vm_start; struct drm_local_map* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_local_map {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct drm_local_map *map = vma->vm_private_data;
	unsigned long offset;
	unsigned long i;
	struct page *page;

	if (!map)
		return VM_FAULT_SIGBUS;	/* Nothing allocated */

	offset = (unsigned long)vmf->virtual_address - vma->vm_start;
	i = (unsigned long)map->handle + offset;
	page = FUNC2((void *)i);
	if (!page)
		return VM_FAULT_SIGBUS;
	FUNC1(page);
	vmf->page = page;

	FUNC0("shm_fault 0x%lx\n", offset);
	return 0;
}