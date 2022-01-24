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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned int PG_LEVEL_4K ; 
 int /*<<< orphan*/ * FUNC0 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

pte_t *FUNC2(unsigned long address)
{
	pte_t *pte;
	unsigned int level;

	pte = FUNC0(address, &level);
	if (!pte)
		return NULL;
	if (level != PG_LEVEL_4K)
		return NULL;
	if (!FUNC1(*pte))
		return NULL;

	return pte;
}