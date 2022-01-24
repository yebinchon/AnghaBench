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
struct kimage {int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct kimage*,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct kimage *image)
{
	unsigned long start_pgtable;
	int result;

	/* Calculate the offsets */
	start_pgtable = FUNC1(image->control_code_page) << PAGE_SHIFT;

	/* Setup the identity mapped 64bit page table */
	result = FUNC0(image, start_pgtable);
	if (result)
		return result;

	return 0;
}