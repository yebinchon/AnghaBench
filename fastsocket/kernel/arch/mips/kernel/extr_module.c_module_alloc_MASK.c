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
struct vm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MODULE_END ; 
 int /*<<< orphan*/  MODULE_START ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_ALLOC ; 
 struct vm_struct* FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct vm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned long) ; 

void *FUNC4(unsigned long size)
{
#ifdef MODULE_START
	struct vm_struct *area;

	size = PAGE_ALIGN(size);
	if (!size)
		return NULL;

	area = __get_vm_area(size, VM_ALLOC, MODULE_START, MODULE_END);
	if (!area)
		return NULL;

	return __vmalloc_area(area, GFP_KERNEL, PAGE_KERNEL);
#else
	if (size == 0)
		return NULL;
	return FUNC3(size);
#endif
}