#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct ib_umem {unsigned long diff; int /*<<< orphan*/  work; struct mm_struct* mm; scalar_t__ offset; scalar_t__ length; struct ib_ucontext* context; } ;
struct ib_ucontext {scalar_t__ closing; int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__* mm; } ;
struct TYPE_4__ {unsigned long locked_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ib_umem*,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mm_struct* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  ib_umem_account ; 
 int /*<<< orphan*/  ib_wq ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct ib_umem *umem)
{
	struct ib_ucontext *context = umem->context;
	struct mm_struct *mm;
	unsigned long diff;

	FUNC2(umem->context->device, umem, 1);

	mm = FUNC5(current);
	if (!mm) {
		FUNC6(umem);
		return;
	}

	diff = FUNC1(umem->length + umem->offset) >> PAGE_SHIFT;

	/*
	 * We may be called with the mm's mmap_sem already held.  This
	 * can happen when a userspace munmap() is the call that drops
	 * the last reference to our file and calls our release
	 * method.  If there are memory regions to destroy, we'll end
	 * up here and not be able to take the mmap_sem.  In that case
	 * we defer the vm_locked accounting to the system workqueue.
	 */
	if (context->closing) {
		if (!FUNC4(&mm->mmap_sem)) {
			FUNC0(&umem->work, ib_umem_account);
			umem->mm   = mm;
			umem->diff = diff;

			FUNC8(ib_wq, &umem->work);
			return;
		}
	} else
		FUNC3(&mm->mmap_sem);

	current->mm->locked_vm -= diff;
	FUNC9(&mm->mmap_sem);
	FUNC7(mm);
	FUNC6(umem);
}