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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PGDIR_ORDER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(struct mm_struct *mm, pgd_t *pgd)
{
#ifndef CONFIG_PPC_4K_PAGES
	FUNC1((void *)pgd);
#else
	free_pages((unsigned long)pgd, PGDIR_ORDER - PAGE_SHIFT);
#endif
}