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
struct thin_disk_superblock {int /*<<< orphan*/  held_root; } ;
struct dm_pool_metadata {int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  THIN_SUPERBLOCK_LOCATION ; 
 struct thin_disk_superblock* FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sb_validator ; 

__attribute__((used)) static int FUNC4(struct dm_pool_metadata *pmd,
			       dm_block_t *result)
{
	int r;
	struct thin_disk_superblock *disk_super;
	struct dm_block *sblock;

	r = FUNC1(pmd->bm, THIN_SUPERBLOCK_LOCATION,
			    &sb_validator, &sblock);
	if (r)
		return r;

	disk_super = FUNC0(sblock);
	*result = FUNC3(disk_super->held_root);

	return FUNC2(sblock);
}