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
struct dm_pool_metadata {int fail_io; int /*<<< orphan*/  root_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_pool_metadata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_pool_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_pool_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dm_pool_metadata *pmd)
{
	int r = -EINVAL;

	FUNC3(&pmd->root_lock);
	if (pmd->fail_io)
		goto out;

	FUNC2(pmd);
	FUNC1(pmd);
	r = FUNC0(pmd, false);
	if (r)
		pmd->fail_io = true;

out:
	FUNC4(&pmd->root_lock);

	return r;
}