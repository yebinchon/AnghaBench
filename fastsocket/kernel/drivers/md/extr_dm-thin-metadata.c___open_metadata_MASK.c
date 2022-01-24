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
struct thin_disk_superblock {int /*<<< orphan*/  data_space_map_root; int /*<<< orphan*/  metadata_space_map_root; } ;
struct dm_pool_metadata {int /*<<< orphan*/  metadata_sm; int /*<<< orphan*/  tm; int /*<<< orphan*/  data_sm; int /*<<< orphan*/  nb_tm; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 int FUNC3 (struct thin_disk_superblock*,struct dm_pool_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_pool_metadata*) ; 
 struct thin_disk_superblock* FUNC5 (struct dm_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC7 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sb_validator ; 

__attribute__((used)) static int FUNC13(struct dm_pool_metadata *pmd)
{
	int r;
	struct dm_block *sblock;
	struct thin_disk_superblock *disk_super;

	r = FUNC6(pmd->bm, THIN_SUPERBLOCK_LOCATION,
			    &sb_validator, &sblock);
	if (r < 0) {
		FUNC0("couldn't read superblock");
		return r;
	}

	disk_super = FUNC5(sblock);

	r = FUNC3(disk_super, pmd);
	if (r < 0)
		goto bad_unlock_sblock;

	r = FUNC12(pmd->bm, THIN_SUPERBLOCK_LOCATION,
			       disk_super->metadata_space_map_root,
			       sizeof(disk_super->metadata_space_map_root),
			       &pmd->tm, &pmd->metadata_sm);
	if (r < 0) {
		FUNC0("tm_open_with_sm failed");
		goto bad_unlock_sblock;
	}

	pmd->data_sm = FUNC9(pmd->tm, disk_super->data_space_map_root,
				       sizeof(disk_super->data_space_map_root));
	if (FUNC1(pmd->data_sm)) {
		FUNC0("sm_disk_open failed");
		r = FUNC2(pmd->data_sm);
		goto bad_cleanup_tm;
	}

	pmd->nb_tm = FUNC10(pmd->tm);
	if (!pmd->nb_tm) {
		FUNC0("could not create non-blocking clone tm");
		r = -ENOMEM;
		goto bad_cleanup_data_sm;
	}

	FUNC4(pmd);
	return FUNC7(sblock);

bad_cleanup_data_sm:
	FUNC8(pmd->data_sm);
bad_cleanup_tm:
	FUNC11(pmd->tm);
	FUNC8(pmd->metadata_sm);
bad_unlock_sblock:
	FUNC7(sblock);

	return r;
}