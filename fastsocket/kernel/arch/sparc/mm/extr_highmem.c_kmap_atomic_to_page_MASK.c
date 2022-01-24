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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FIXADDR_START ; 
 unsigned long FIXADDR_TOP ; 
 unsigned long FIX_KMAP_BEGIN ; 
 int PAGE_SHIFT ; 
 unsigned long PKMAP_BASE ; 
 unsigned long SRMMU_NOCACHE_VADDR ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/ * kmap_pte ; 
 struct page* FUNC2 (int) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long) ; 
 struct page* FUNC5 (void*) ; 

struct page *FUNC6(void *ptr)
{
	unsigned long idx, vaddr = (unsigned long)ptr;
	pte_t *pte;

	if (vaddr < SRMMU_NOCACHE_VADDR)
		return FUNC5(ptr);
	if (vaddr < PKMAP_BASE)
		return FUNC2(FUNC1(vaddr) >> PAGE_SHIFT);
	FUNC0(vaddr < FIXADDR_START);
	FUNC0(vaddr > FIXADDR_TOP);

	idx = FUNC4(vaddr);
	pte = kmap_pte - (idx - FIX_KMAP_BEGIN);
	return FUNC3(*pte);
}