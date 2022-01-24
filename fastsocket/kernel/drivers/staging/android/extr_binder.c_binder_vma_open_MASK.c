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
struct vm_area_struct {int vm_start; int vm_end; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_flags; struct binder_proc* vm_private_data; } ;
struct binder_proc {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_OPEN_CLOSE ; 
 int SZ_1K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vm_area_struct *vma)
{
	struct binder_proc *proc = vma->vm_private_data;
	FUNC0(BINDER_DEBUG_OPEN_CLOSE,
		     "binder: %d open vm area %lx-%lx (%ld K) vma %lx pagep %lx\n",
		     proc->pid, vma->vm_start, vma->vm_end,
		     (vma->vm_end - vma->vm_start) / SZ_1K, vma->vm_flags,
		     (unsigned long)FUNC2(vma->vm_page_prot));
	FUNC1();
}