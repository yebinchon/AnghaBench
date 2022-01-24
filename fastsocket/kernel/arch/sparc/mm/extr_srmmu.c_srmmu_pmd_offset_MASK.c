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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long PMD_SHIFT ; 
 int PTRS_PER_PMD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline pmd_t *FUNC1(pgd_t * dir, unsigned long address)
{
	return (pmd_t *) FUNC0(*dir) +
	    ((address >> PMD_SHIFT) & (PTRS_PER_PMD - 1));
}