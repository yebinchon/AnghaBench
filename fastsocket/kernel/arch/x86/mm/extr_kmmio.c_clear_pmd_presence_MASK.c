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
typedef  int pmdval_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(pmd_t *pmd, bool clear, pmdval_t *old)
{
	pmdval_t v = FUNC1(*pmd);
	if (clear) {
		*old = v & _PAGE_PRESENT;
		v &= ~_PAGE_PRESENT;
	} else	/* presume this has been called with clear==true previously */
		v |= *old;
	FUNC2(pmd, FUNC0(v));
}