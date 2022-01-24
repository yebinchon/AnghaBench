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
typedef  scalar_t__ resource_size_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long _PAGE_CACHE_WC ; 
 unsigned long __PAGE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (scalar_t__,scalar_t__,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 

int FUNC3(resource_size_t base, unsigned long size, pgprot_t *prot)
{
	unsigned long flag = _PAGE_CACHE_WC;
	int ret;

	if (!FUNC2(base, size))
		return -EINVAL;

	ret = FUNC1(base, base + size, &flag);
	if (ret)
		return ret;

	*prot = FUNC0(__PAGE_KERNEL | flag);
	return 0;
}