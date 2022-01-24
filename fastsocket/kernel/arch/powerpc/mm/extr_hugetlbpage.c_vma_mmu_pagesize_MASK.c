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
struct vm_area_struct {int /*<<< orphan*/  vm_start; int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned int) ; 

unsigned long FUNC2(struct vm_area_struct *vma)
{
	unsigned int psize = FUNC0(vma->vm_mm, vma->vm_start);

	return 1UL << FUNC1(psize);
}