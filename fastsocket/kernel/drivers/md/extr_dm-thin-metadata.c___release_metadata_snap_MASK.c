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
struct thin_disk_superblock {int /*<<< orphan*/  device_details_root; int /*<<< orphan*/  data_mapping_root; int /*<<< orphan*/  held_root; } ;
struct dm_pool_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  metadata_sm; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thin_disk_superblock* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sb_validator ; 
 int FUNC8 (struct dm_pool_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC9(struct dm_pool_metadata *pmd)
{
	int r;
	struct thin_disk_superblock *disk_super;
	struct dm_block *sblock, *copy;
	dm_block_t held_root;

	r = FUNC8(pmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC2(sblock);
	held_root = FUNC7(disk_super->held_root);
	disk_super->held_root = FUNC1(0);

	FUNC3(sblock);

	if (!held_root) {
		FUNC0("No pool metadata snapshot found: nothing to release.");
		return -EINVAL;
	}

	r = FUNC5(pmd->tm, held_root, &sb_validator, &copy);
	if (r)
		return r;

	disk_super = FUNC2(copy);
	FUNC4(pmd->metadata_sm, FUNC7(disk_super->data_mapping_root));
	FUNC4(pmd->metadata_sm, FUNC7(disk_super->device_details_root));
	FUNC4(pmd->metadata_sm, held_root);

	return FUNC6(pmd->tm, copy);
}