#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * vdso; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; TYPE_1__ context; int /*<<< orphan*/  start_stack; } ;
struct linux_binprm {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int VM_EXEC ; 
 int VM_MAYEXEC ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int VM_READ ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdso_enabled ; 
 int /*<<< orphan*/  vdso_pages ; 
 int /*<<< orphan*/  vdso_size ; 

int FUNC6(struct linux_binprm *bprm, int uses_interp)
{
	struct mm_struct *mm = current->mm;
	unsigned long addr;
	int ret;

	if (!vdso_enabled)
		return 0;

	FUNC1(&mm->mmap_sem);
	addr = FUNC5(mm->start_stack, vdso_size);
	addr = FUNC2(NULL, addr, vdso_size, 0, 0);
	if (FUNC0(addr)) {
		ret = addr;
		goto up_fail;
	}

	current->mm->context.vdso = (void *)addr;

	ret = FUNC3(mm, addr, vdso_size,
				      VM_READ|VM_EXEC|
				      VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
				      vdso_pages);
	if (ret) {
		current->mm->context.vdso = NULL;
		goto up_fail;
	}

up_fail:
	FUNC4(&mm->mmap_sem);
	return ret;
}