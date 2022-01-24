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
struct kimage {int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (struct kimage*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct kimage*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kimage*,int /*<<< orphan*/ *) ; 
 int max_pfn ; 

__attribute__((used)) static int FUNC4(struct kimage *image, unsigned long start_pgtable)
{
	pgd_t *level4p;
	int result;
	level4p = (pgd_t *)FUNC0(start_pgtable);
	result = FUNC1(image, level4p, 0, max_pfn << PAGE_SHIFT);
	if (result)
		return result;
	/*
	 * image->start may be outside 0 ~ max_pfn, for example when
	 * jump back to original kernel from kexeced kernel
	 */
	result = FUNC2(image, level4p, image->start);
	if (result)
		return result;
	return FUNC3(image, level4p);
}