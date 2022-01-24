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
struct resource {unsigned long start; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GPMC_CS_NUM ; 
 int GPMC_SECTION_SHIFT ; 
 int FUNC0 (struct resource*,unsigned long,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct resource*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long,int /*<<< orphan*/ ) ; 
 struct resource* gpmc_cs_mem ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  gpmc_mem_lock ; 
 int /*<<< orphan*/  gpmc_mem_root ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int cs, unsigned long size, unsigned long *base)
{
	struct resource *res = &gpmc_cs_mem[cs];
	int r = -1;

	if (cs > GPMC_CS_NUM)
		return -ENODEV;

	size = FUNC6(size);
	if (size > (1 << GPMC_SECTION_SHIFT))
		return -ENOMEM;

	FUNC8(&gpmc_mem_lock);
	if (FUNC4(cs)) {
		r = -EBUSY;
		goto out;
	}
	if (FUNC3(cs))
		r = FUNC0(res, res->start & ~(size - 1), size);
	if (r < 0)
		r = FUNC1(&gpmc_mem_root, res, size, 0, ~0,
				      size, NULL, NULL);
	if (r < 0)
		goto out;

	FUNC2(cs, res->start, FUNC7(res));
	*base = res->start;
	FUNC5(cs, 1);
out:
	FUNC9(&gpmc_mem_lock);
	return r;
}