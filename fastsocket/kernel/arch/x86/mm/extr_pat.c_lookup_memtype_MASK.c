#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct memtype {int type; } ;
struct TYPE_2__ {scalar_t__ (* is_untracked_pat_range ) (int,scalar_t__) ;} ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int _PAGE_CACHE_UC_MINUS ; 
 int _PAGE_CACHE_WB ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  memtype_lock ; 
 struct memtype* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  memtype_rbroot ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 struct page* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 TYPE_1__ x86_platform ; 

__attribute__((used)) static unsigned long FUNC7(u64 paddr)
{
	int rettype = _PAGE_CACHE_WB;
	struct memtype *entry;

	if (x86_platform.is_untracked_pat_range(paddr, paddr + PAGE_SIZE))
		return rettype;

	if (FUNC2(paddr, paddr + PAGE_SIZE)) {
		struct page *page;
		page = FUNC3(paddr >> PAGE_SHIFT);
		rettype = FUNC0(page);
		/*
		 * -1 from get_page_memtype() implies RAM page is in its
		 * default state and not reserved, and hence of type WB
		 */
		if (rettype == -1)
			rettype = _PAGE_CACHE_WB;

		return rettype;
	}

	FUNC4(&memtype_lock);

	entry = FUNC1(&memtype_rbroot, paddr);
	if (entry != NULL)
		rettype = entry->type;
	else
		rettype = _PAGE_CACHE_UC_MINUS;

	FUNC5(&memtype_lock);
	return rettype;
}