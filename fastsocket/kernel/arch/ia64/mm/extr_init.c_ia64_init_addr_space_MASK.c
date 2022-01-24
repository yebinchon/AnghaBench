#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; void* vm_end; TYPE_2__* vm_mm; int /*<<< orphan*/  anon_vma_chain; } ;
struct TYPE_4__ {int rbs_bot; } ;
struct TYPE_6__ {int personality; TYPE_2__* mm; TYPE_1__ thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MMAP_PAGE_ZERO ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 void* PAGE_SIZE ; 
 int VM_ACCOUNT ; 
 int VM_DATA_DEFAULT_FLAGS ; 
 int VM_GROWSUP ; 
 int VM_IO ; 
 int VM_MAYREAD ; 
 int VM_READ ; 
 int VM_RESERVED ; 
 int _PAGE_MA_NAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_area_cachep ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void
FUNC10 (void)
{
	struct vm_area_struct *vma;

	FUNC3();

	/*
	 * If we're out of memory and kmem_cache_alloc() returns NULL, we simply ignore
	 * the problem.  When the process attempts to write to the register backing store
	 * for the first time, it will get a SEGFAULT in this case.
	 */
	vma = FUNC6(vm_area_cachep, GFP_KERNEL);
	if (vma) {
		FUNC0(&vma->anon_vma_chain);
		vma->vm_mm = current->mm;
		vma->vm_start = current->thread.rbs_bot & PAGE_MASK;
		vma->vm_end = vma->vm_start + PAGE_SIZE;
		vma->vm_flags = VM_DATA_DEFAULT_FLAGS|VM_GROWSUP|VM_ACCOUNT;
		vma->vm_page_prot = FUNC9(vma->vm_flags);
		FUNC2(&current->mm->mmap_sem);
		if (FUNC4(current->mm, vma)) {
			FUNC8(&current->mm->mmap_sem);
			FUNC5(vm_area_cachep, vma);
			return;
		}
		FUNC8(&current->mm->mmap_sem);
	}

	/* map NaT-page at address zero to speed up speculative dereferencing of NULL: */
	if (!(current->personality & MMAP_PAGE_ZERO)) {
		vma = FUNC6(vm_area_cachep, GFP_KERNEL);
		if (vma) {
			FUNC0(&vma->anon_vma_chain);
			vma->vm_mm = current->mm;
			vma->vm_end = PAGE_SIZE;
			vma->vm_page_prot = FUNC1(FUNC7(PAGE_READONLY) | _PAGE_MA_NAT);
			vma->vm_flags = VM_READ | VM_MAYREAD | VM_IO | VM_RESERVED;
			FUNC2(&current->mm->mmap_sem);
			if (FUNC4(current->mm, vma)) {
				FUNC8(&current->mm->mmap_sem);
				FUNC5(vm_area_cachep, vma);
				return;
			}
			FUNC8(&current->mm->mmap_sem);
		}
	}
}