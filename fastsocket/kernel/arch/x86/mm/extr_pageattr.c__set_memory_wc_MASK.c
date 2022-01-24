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
 int /*<<< orphan*/  _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  _PAGE_CACHE_UC_MINUS ; 
 int /*<<< orphan*/  _PAGE_CACHE_WC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(unsigned long addr, int numpages)
{
	int ret;
	unsigned long addr_copy = addr;

	ret = FUNC1(&addr, numpages,
				    FUNC0(_PAGE_CACHE_UC_MINUS), 0);
	if (!ret) {
		ret = FUNC2(&addr_copy, numpages,
					       FUNC0(_PAGE_CACHE_WC),
					       FUNC0(_PAGE_CACHE_MASK),
					       0, 0, NULL);
	}
	return ret;
}