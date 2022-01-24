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
 int /*<<< orphan*/  CPA_ARRAY ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long _PAGE_CACHE_MASK ; 
 unsigned long _PAGE_CACHE_UC_MINUS ; 
 unsigned long _PAGE_CACHE_WC ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (scalar_t__,scalar_t__,unsigned long,int /*<<< orphan*/ *) ; 

int FUNC6(unsigned long *addr, int addrinarray,
		unsigned long new_type)
{
	int i, j;
	int ret;

	/*
	 * for now UC MINUS. see comments in ioremap_nocache()
	 */
	for (i = 0; i < addrinarray; i++) {
		ret = FUNC5(FUNC0(addr[i]), FUNC0(addr[i]) + PAGE_SIZE,
					new_type, NULL);
		if (ret)
			goto out_free;
	}

	ret = FUNC2(addr, addrinarray,
				    FUNC1(_PAGE_CACHE_UC_MINUS), 1);

	if (!ret && new_type == _PAGE_CACHE_WC)
		ret = FUNC3(addr, addrinarray,
					       FUNC1(_PAGE_CACHE_WC),
					       FUNC1(_PAGE_CACHE_MASK),
					       0, CPA_ARRAY, NULL);
	if (ret)
		goto out_free;

	return 0;

out_free:
	for (j = 0; j < i; j++)
		FUNC4(FUNC0(addr[j]), FUNC0(addr[j]) + PAGE_SIZE);

	return ret;
}