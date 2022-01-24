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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  _PAGE_CACHE_MASK ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

int FUNC4(unsigned long *addr, int addrinarray)
{
	int i;
	int ret;

	ret = FUNC2(addr, addrinarray,
				      FUNC1(_PAGE_CACHE_MASK), 1);
	if (ret)
		return ret;

	for (i = 0; i < addrinarray; i++)
		FUNC3(FUNC0(addr[i]), FUNC0(addr[i]) + PAGE_SIZE);

	return 0;
}