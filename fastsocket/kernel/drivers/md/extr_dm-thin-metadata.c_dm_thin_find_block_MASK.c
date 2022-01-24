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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_thin_lookup_result {int /*<<< orphan*/  shared; int /*<<< orphan*/  block; } ;
struct dm_thin_device {int /*<<< orphan*/  id; struct dm_pool_metadata* pmd; } ;
struct dm_btree_info {int dummy; } ;
struct dm_pool_metadata {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  root; scalar_t__ fail_io; struct dm_btree_info nb_info; struct dm_btree_info info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EINVAL ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct dm_thin_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_btree_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dm_thin_device *td, dm_block_t block,
		       int can_block, struct dm_thin_lookup_result *result)
{
	int r = -EINVAL;
	uint64_t block_time = 0;
	__le64 value;
	struct dm_pool_metadata *pmd = td->pmd;
	dm_block_t keys[2] = { td->id, block };
	struct dm_btree_info *info;

	if (can_block) {
		FUNC2(&pmd->root_lock);
		info = &pmd->info;
	} else if (FUNC3(&pmd->root_lock))
		info = &pmd->nb_info;
	else
		return -EWOULDBLOCK;

	if (pmd->fail_io)
		goto out;

	r = FUNC1(info, pmd->root, keys, &value);
	if (!r)
		block_time = FUNC4(value);

out:
	FUNC6(&pmd->root_lock);

	if (!r) {
		dm_block_t exception_block;
		uint32_t exception_time;
		FUNC5(block_time, &exception_block,
				  &exception_time);
		result->block = exception_block;
		result->shared = FUNC0(td, exception_time);
	}

	return r;
}