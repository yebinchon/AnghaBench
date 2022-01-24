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
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MODULES_END ; 
 unsigned long MODULES_LEN ; 
 int /*<<< orphan*/  MODULES_VADDR ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 int /*<<< orphan*/  VM_ALLOC ; 
 int __GFP_HIGHMEM ; 
 struct vm_struct* FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct vm_struct*,int,int /*<<< orphan*/ ) ; 

void *FUNC3(unsigned long size)
{
	struct vm_struct *area;

	if (!size)
		return NULL;
	size = FUNC0(size);
	if (size > MODULES_LEN)
		return NULL;

	area = FUNC1(size, VM_ALLOC, MODULES_VADDR, MODULES_END);
	if (!area)
		return NULL;

	return FUNC2(area, GFP_KERNEL | __GFP_HIGHMEM,
					PAGE_KERNEL_EXEC);
}