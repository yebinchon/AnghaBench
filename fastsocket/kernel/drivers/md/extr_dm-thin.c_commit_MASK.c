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
struct pool {int /*<<< orphan*/  pmd; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PM_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct pool *pool)
{
	int r;

	if (FUNC1(pool) != PM_WRITE)
		return -EINVAL;

	r = FUNC0(pool->pmd);
	if (r)
		FUNC2(pool, "dm_pool_commit_metadata", r);

	return r;
}