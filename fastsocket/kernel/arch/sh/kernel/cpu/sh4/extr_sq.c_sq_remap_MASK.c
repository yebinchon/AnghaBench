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
struct sq_mapping {unsigned long addr; unsigned int size; char const* name; unsigned long sq_addr; } ;

/* Variables and functions */
 unsigned long EINVAL ; 
 unsigned long ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long P4SEG_STORE_QUE ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_KERNEL_NOCACHE ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct sq_mapping*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  high_memory ; 
 struct sq_mapping* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sq_mapping*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  sq_bitmap ; 
 int /*<<< orphan*/  sq_cache ; 
 int /*<<< orphan*/  FUNC9 (struct sq_mapping*) ; 
 scalar_t__ FUNC10 (int) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 

unsigned long FUNC12(unsigned long phys, unsigned int size,
		       const char *name, unsigned long flags)
{
	struct sq_mapping *map;
	unsigned long end;
	unsigned int psz;
	int ret, page;

	/* Don't allow wraparound or zero size */
	end = phys + size - 1;
	if (FUNC10(!size || end < phys))
		return -EINVAL;
	/* Don't allow anyone to remap normal memory.. */
	if (FUNC10(phys < FUNC11(high_memory)))
		return -EINVAL;

	phys &= PAGE_MASK;
	size = FUNC0(end + 1) - phys;

	map = FUNC4(sq_cache, GFP_KERNEL);
	if (FUNC10(!map))
		return -ENOMEM;

	map->addr = phys;
	map->size = size;
	map->name = name;

	page = FUNC2(sq_bitmap, 0x04000000 >> PAGE_SHIFT,
				       FUNC3(map->size));
	if (FUNC10(page < 0)) {
		ret = -ENOSPC;
		goto out;
	}

	map->sq_addr = P4SEG_STORE_QUE + (page << PAGE_SHIFT);

	ret = FUNC1(map, FUNC7(PAGE_KERNEL_NOCACHE) | flags);
	if (FUNC10(ret != 0))
		goto out;

	psz = (size + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	FUNC8("sqremap: %15s  [%4d page%s]  va 0x%08lx   pa 0x%08lx\n",
		FUNC6(map->name) ? map->name : "???",
		psz, psz == 1 ? " " : "s",
		map->sq_addr, map->addr);

	FUNC9(map);

	return map->sq_addr;

out:
	FUNC5(sq_cache, map);
	return ret;
}