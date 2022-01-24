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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ mmu_page_header_cache ; 
 scalar_t__ pte_chain_cache ; 
 scalar_t__ rmap_desc_cache ; 

__attribute__((used)) static void FUNC1(void)
{
	if (pte_chain_cache)
		FUNC0(pte_chain_cache);
	if (rmap_desc_cache)
		FUNC0(rmap_desc_cache);
	if (mmu_page_header_cache)
		FUNC0(mmu_page_header_cache);
}