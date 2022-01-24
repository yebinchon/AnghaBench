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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FRAM_BASE ; 
 int /*<<< orphan*/  PAGE_SHARED ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct file *filp, struct vm_area_struct *vma)
{
	int ret;

	ret = FUNC0(vma,
		vma->vm_start,
		FUNC1((void *)((unsigned long)FRAM_BASE)) >> PAGE_SHIFT,
		vma->vm_end-vma->vm_start,
		PAGE_SHARED);

	if (ret != 0)
		return -EAGAIN;

	return 0;
}