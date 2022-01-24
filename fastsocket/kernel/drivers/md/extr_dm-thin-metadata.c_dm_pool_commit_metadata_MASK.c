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
struct dm_pool_metadata {int /*<<< orphan*/  root_lock; scalar_t__ fail_io; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_pool_metadata*) ; 
 int FUNC1 (struct dm_pool_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dm_pool_metadata *pmd)
{
	int r = -EINVAL;

	FUNC2(&pmd->root_lock);
	if (pmd->fail_io)
		goto out;

	r = FUNC1(pmd);
	if (r <= 0)
		goto out;

	/*
	 * Open the next transaction.
	 */
	r = FUNC0(pmd);
out:
	FUNC3(&pmd->root_lock);
	return r;
}