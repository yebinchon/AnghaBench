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
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int VM_EXEC ; 
 scalar_t__ cpu_has_dc_aliases ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,unsigned long) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

void FUNC8(struct vm_area_struct *vma,
	struct page *page, unsigned long vaddr, void *dst, const void *src,
	unsigned long len)
{
	if (cpu_has_dc_aliases &&
	    FUNC6(page) && !FUNC0(page)) {
		void *vto = FUNC3(page, vaddr) + (vaddr & ~PAGE_MASK);
		FUNC5(vto, src, len);
		FUNC4();
	} else {
		FUNC5(dst, src, len);
		if (cpu_has_dc_aliases)
			FUNC1(page);
	}
	if ((vma->vm_flags & VM_EXEC) && !cpu_has_ic_fills_f_dc)
		FUNC2(vma, vaddr, FUNC7(page));
}