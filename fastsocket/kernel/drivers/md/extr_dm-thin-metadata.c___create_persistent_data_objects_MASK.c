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
struct dm_pool_metadata {int /*<<< orphan*/  bm; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  THIN_MAX_CONCURRENT_LOCKS ; 
 int THIN_METADATA_BLOCK_SIZE ; 
 int /*<<< orphan*/  THIN_METADATA_CACHE_SIZE ; 
 int FUNC3 (struct dm_pool_metadata*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dm_pool_metadata *pmd, bool format_device)
{
	int r;

	pmd->bm = FUNC4(pmd->bdev, THIN_METADATA_BLOCK_SIZE << SECTOR_SHIFT,
					  THIN_METADATA_CACHE_SIZE,
					  THIN_MAX_CONCURRENT_LOCKS);
	if (FUNC1(pmd->bm)) {
		FUNC0("could not create block manager");
		return FUNC2(pmd->bm);
	}

	r = FUNC3(pmd, format_device);
	if (r)
		FUNC5(pmd->bm);

	return r;
}