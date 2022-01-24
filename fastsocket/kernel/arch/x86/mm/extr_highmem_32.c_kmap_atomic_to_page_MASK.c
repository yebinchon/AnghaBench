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
 unsigned long FIXADDR_START ; 
 unsigned long FIX_KMAP_BEGIN ; 
 int /*<<< orphan*/ * kmap_pte ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 struct page* FUNC2 (void*) ; 

struct page *FUNC3(void *ptr)
{
	unsigned long idx, vaddr = (unsigned long)ptr;
	pte_t *pte;

	if (vaddr < FIXADDR_START)
		return FUNC2(ptr);

	idx = FUNC1(vaddr);
	pte = kmap_pte - (idx - FIX_KMAP_BEGIN);
	return FUNC0(*pte);
}