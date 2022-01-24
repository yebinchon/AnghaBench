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
struct thin_disk_superblock {int /*<<< orphan*/  data_block_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  trans_id; int /*<<< orphan*/  device_details_root; int /*<<< orphan*/  data_mapping_root; int /*<<< orphan*/  time; } ;
struct dm_pool_metadata {void* data_block_size; void* flags; void* trans_id; void* details_root; void* root; void* time; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 struct thin_disk_superblock* FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_block*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sb_validator ; 

__attribute__((used)) static int FUNC5(struct dm_pool_metadata *pmd)
{
	int r;
	struct thin_disk_superblock *disk_super;
	struct dm_block *sblock;

	/*
	 * We re-read the superblock every time.  Shouldn't need to do this
	 * really.
	 */
	r = FUNC1(pmd->bm, THIN_SUPERBLOCK_LOCATION,
			    &sb_validator, &sblock);
	if (r)
		return r;

	disk_super = FUNC0(sblock);
	pmd->time = FUNC3(disk_super->time);
	pmd->root = FUNC4(disk_super->data_mapping_root);
	pmd->details_root = FUNC4(disk_super->device_details_root);
	pmd->trans_id = FUNC4(disk_super->trans_id);
	pmd->flags = FUNC3(disk_super->flags);
	pmd->data_block_size = FUNC3(disk_super->data_block_size);

	FUNC2(sblock);
	return 0;
}