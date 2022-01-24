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
struct dm_thin_device {int dummy; } ;
struct dm_pool_metadata {int /*<<< orphan*/  bl_info; int /*<<< orphan*/  root; int /*<<< orphan*/  tl_info; int /*<<< orphan*/  details_root; int /*<<< orphan*/  details_info; } ;
struct disk_device_details {int dummy; } ;
typedef  int /*<<< orphan*/  dm_thin_id ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct dm_thin_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dm_pool_metadata*,int /*<<< orphan*/ ,int,struct dm_thin_device**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct disk_device_details*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dm_pool_metadata *pmd,
			 dm_thin_id dev)
{
	int r;
	dm_block_t dev_root;
	uint64_t key = dev;
	struct disk_device_details details_le;
	struct dm_thin_device *td;
	__le64 value;

	r = FUNC7(&pmd->details_info, pmd->details_root,
			    &key, &details_le);
	if (!r)
		return -EEXIST;

	/*
	 * Create an empty btree for the mappings.
	 */
	r = FUNC5(&pmd->bl_info, &dev_root);
	if (r)
		return r;

	/*
	 * Insert it into the main mapping tree.
	 */
	value = FUNC3(dev_root);
	FUNC1(&value);
	r = FUNC6(&pmd->tl_info, pmd->root, &key, &value, &pmd->root);
	if (r) {
		FUNC4(&pmd->bl_info, dev_root);
		return r;
	}

	r = FUNC2(pmd, dev, 1, &td);
	if (r) {
		FUNC8(&pmd->tl_info, pmd->root, &key, &pmd->root);
		FUNC4(&pmd->bl_info, dev_root);
		return r;
	}
	FUNC0(td);

	return r;
}