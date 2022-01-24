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
struct thin_disk_superblock {int /*<<< orphan*/  held_root; int /*<<< orphan*/  device_details_root; int /*<<< orphan*/  data_mapping_root; int /*<<< orphan*/  metadata_space_map_root; int /*<<< orphan*/  data_space_map_root; } ;
struct dm_pool_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  metadata_sm; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct thin_disk_superblock* FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct dm_block*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sb_validator ; 
 int FUNC13 (struct dm_pool_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC14(struct dm_pool_metadata *pmd)
{
	int r, inc;
	struct thin_disk_superblock *disk_super;
	struct dm_block *copy, *sblock;
	dm_block_t held_root;

	/*
	 * Copy the superblock.
	 */
	FUNC6(pmd->metadata_sm, THIN_SUPERBLOCK_LOCATION);
	r = FUNC9(pmd->tm, THIN_SUPERBLOCK_LOCATION,
			       &sb_validator, &copy, &inc);
	if (r)
		return r;

	FUNC0(!inc);

	held_root = FUNC4(copy);
	disk_super = FUNC3(copy);

	if (FUNC11(disk_super->held_root)) {
		FUNC1("Pool metadata snapshot already exists: release this before taking another.");

		FUNC7(pmd->tm, held_root);
		FUNC10(pmd->tm, copy);
		return -EBUSY;
	}

	/*
	 * Wipe the spacemap since we're not publishing this.
	 */
	FUNC12(&disk_super->data_space_map_root, 0,
	       sizeof(disk_super->data_space_map_root));
	FUNC12(&disk_super->metadata_space_map_root, 0,
	       sizeof(disk_super->metadata_space_map_root));

	/*
	 * Increment the data structures that need to be preserved.
	 */
	FUNC8(pmd->tm, FUNC11(disk_super->data_mapping_root));
	FUNC8(pmd->tm, FUNC11(disk_super->device_details_root));
	FUNC10(pmd->tm, copy);

	/*
	 * Write the held root into the superblock.
	 */
	r = FUNC13(pmd, &sblock);
	if (r) {
		FUNC7(pmd->tm, held_root);
		return r;
	}

	disk_super = FUNC3(sblock);
	disk_super->held_root = FUNC2(held_root);
	FUNC5(sblock);
	return 0;
}