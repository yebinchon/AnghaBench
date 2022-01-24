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
typedef  int pteval_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PTE_FLAGS_MASK ; 
 int PTE_PFN_MASK ; 
 int _PAGE_PRESENT ; 
 scalar_t__ FUNC0 (unsigned long) ; 

__attribute__((used)) static pteval_t FUNC1(pteval_t val)
{
	if (val & _PAGE_PRESENT) {
		unsigned long mfn = (val & PTE_PFN_MASK) >> PAGE_SHIFT;
		pteval_t flags = val & PTE_FLAGS_MASK;
		val = ((pteval_t)FUNC0(mfn) << PAGE_SHIFT) | flags;
	}

	return val;
}