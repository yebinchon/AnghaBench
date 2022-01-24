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
struct thin_disk_superblock {int /*<<< orphan*/  flags; } ;
struct dm_pool_metadata {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  flags; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  THIN_METADATA_NEEDS_CHECK_FLAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thin_disk_superblock* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dm_pool_metadata*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dm_pool_metadata *pmd)
{
	int r;
	struct dm_block *sblock;
	struct thin_disk_superblock *disk_super;

	FUNC4(&pmd->root_lock);
	pmd->flags |= THIN_METADATA_NEEDS_CHECK_FLAG;

	r = FUNC5(pmd, &sblock);
	if (r) {
		FUNC0("couldn't read superblock");
		goto out;
	}

	disk_super = FUNC2(sblock);
	disk_super->flags = FUNC1(pmd->flags);

	FUNC3(sblock);
out:
	FUNC6(&pmd->root_lock);
	return r;
}