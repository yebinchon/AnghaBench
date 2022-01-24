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
typedef  enum km_type { ____Placeholder_km_type } km_type ;
typedef  enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;

/* Variables and functions */
 int FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int kmap_pte ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

void *FUNC7(unsigned long pfn, enum km_type type)
{
	enum fixed_addresses idx;
	unsigned long vaddr;

	FUNC3();

	FUNC1(type);
	idx = type + KM_TYPE_NR*FUNC6();
	vaddr = FUNC0(FIX_KMAP_BEGIN + idx);
	FUNC5(kmap_pte-idx, FUNC4(pfn, PAGE_KERNEL));
	FUNC2(vaddr);

	return (void*) vaddr;
}