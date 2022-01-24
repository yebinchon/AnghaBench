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
struct thin_disk_superblock {void* flags; void* trans_id; void* device_details_root; void* data_mapping_root; void* time; } ;
struct dm_pool_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  flags; int /*<<< orphan*/  trans_id; int /*<<< orphan*/  details_root; int /*<<< orphan*/  root; int /*<<< orphan*/  time; int /*<<< orphan*/  data_sm; int /*<<< orphan*/  metadata_sm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dm_pool_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_pool_metadata*,struct thin_disk_superblock*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct thin_disk_superblock* FUNC5 (struct dm_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dm_pool_metadata*) ; 
 int FUNC11 (struct dm_pool_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC12(struct dm_pool_metadata *pmd)
{
	int r;
	size_t metadata_len, data_len;
	struct thin_disk_superblock *disk_super;
	struct dm_block *sblock;

	/*
	 * We need to know if the thin_disk_superblock exceeds a 512-byte sector.
	 */
	FUNC0(sizeof(struct thin_disk_superblock) > 512);

	r = FUNC1(pmd);
	if (r < 0)
		return r;

	r = FUNC6(pmd->data_sm);
	if (r < 0)
		return r;

	r = FUNC9(pmd->tm);
	if (r < 0)
		return r;

	r = FUNC7(pmd->metadata_sm, &metadata_len);
	if (r < 0)
		return r;

	r = FUNC7(pmd->data_sm, &data_len);
	if (r < 0)
		return r;

	r = FUNC10(pmd);
	if (r < 0)
		return r;

	r = FUNC11(pmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC5(sblock);
	disk_super->time = FUNC3(pmd->time);
	disk_super->data_mapping_root = FUNC4(pmd->root);
	disk_super->device_details_root = FUNC4(pmd->details_root);
	disk_super->trans_id = FUNC4(pmd->trans_id);
	disk_super->flags = FUNC3(pmd->flags);

	FUNC2(pmd, disk_super);

	return FUNC8(pmd->tm, sblock);
}