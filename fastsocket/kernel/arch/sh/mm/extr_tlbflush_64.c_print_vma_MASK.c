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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct vm_area_struct *vma)
{
	FUNC1("vma start 0x%08lx\n", vma->vm_start);
	FUNC1("vma end   0x%08lx\n", vma->vm_end);

	FUNC0(vma->vm_page_prot);
	FUNC1("vm_flags 0x%08lx\n", vma->vm_flags);
}