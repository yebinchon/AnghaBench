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
struct i2o_pool {int /*<<< orphan*/  name; int /*<<< orphan*/  slab; int /*<<< orphan*/  mempool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

int FUNC7(struct i2o_pool *pool, const char *name,
				 size_t size, int min_nr)
{
	pool->name = FUNC1(FUNC6(name) + 1, GFP_KERNEL);
	if (!pool->name)
		goto exit;
	FUNC5(pool->name, name);

	pool->slab =
	    FUNC2(pool->name, size, 0, SLAB_HWCACHE_ALIGN, NULL);
	if (!pool->slab)
		goto free_name;

	pool->mempool = FUNC4(min_nr, pool->slab);
	if (!pool->mempool)
		goto free_slab;

	return 0;

free_slab:
	FUNC3(pool->slab);

free_name:
	FUNC0(pool->name);

exit:
	return -ENOMEM;
}