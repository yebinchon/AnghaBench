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
struct dm_thin_device {struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  fail_io; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_thin_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_thin_device *td,
				     dm_block_t *result)
{
	int r = -EINVAL;
	struct dm_pool_metadata *pmd = td->pmd;

	FUNC1(&pmd->root_lock);
	if (!pmd->fail_io)
		r = FUNC0(td, result);
	FUNC2(&pmd->root_lock);

	return r;
}