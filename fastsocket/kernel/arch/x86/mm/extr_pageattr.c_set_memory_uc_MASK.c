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
 int PAGE_SIZE ; 
 int /*<<< orphan*/  _PAGE_CACHE_UC_MINUS ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(unsigned long addr, int numpages)
{
	int ret;

	/*
	 * for now UC MINUS. see comments in ioremap_nocache()
	 */
	ret = FUNC3(FUNC0(addr), FUNC0(addr) + numpages * PAGE_SIZE,
			    _PAGE_CACHE_UC_MINUS, NULL);
	if (ret)
		goto out_err;

	ret = FUNC1(addr, numpages);
	if (ret)
		goto out_free;

	return 0;

out_free:
	FUNC2(FUNC0(addr), FUNC0(addr) + numpages * PAGE_SIZE);
out_err:
	return ret;
}