#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mdp_superblock_1 {unsigned long long super_offset; int /*<<< orphan*/  sb_csum; int /*<<< orphan*/  data_size; } ;
struct md_rdev {scalar_t__ data_offset; scalar_t__ new_data_offset; scalar_t__ sb_start; unsigned long long sectors; TYPE_3__* mddev; int /*<<< orphan*/  sb_page; int /*<<< orphan*/  sb_size; TYPE_2__* bdev; } ;
typedef  unsigned long long sector_t ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_7__ {unsigned long long dev_sectors; TYPE_1__ bitmap_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdp_superblock_1*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct md_rdev*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp_superblock_1* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long long
FUNC6(struct md_rdev *rdev, sector_t num_sectors)
{
	struct mdp_superblock_1 *sb;
	sector_t max_sectors;
	if (num_sectors && num_sectors < rdev->mddev->dev_sectors)
		return 0; /* component must fit device */
	if (rdev->data_offset != rdev->new_data_offset)
		return 0; /* too confusing */
	if (rdev->sb_start < rdev->data_offset) {
		/* minor versions 1 and 2; superblock before data */
		max_sectors = FUNC2(rdev->bdev->bd_inode) >> 9;
		max_sectors -= rdev->data_offset;
		if (!num_sectors || num_sectors > max_sectors)
			num_sectors = max_sectors;
	} else if (rdev->mddev->bitmap_info.offset) {
		/* minor version 0 with bitmap we can't move */
		return 0;
	} else {
		/* minor version 0; superblock after data */
		sector_t sb_start;
		sb_start = (FUNC2(rdev->bdev->bd_inode) >> 9) - 8*2;
		sb_start &= ~(sector_t)(4*2 - 1);
		max_sectors = rdev->sectors + sb_start - rdev->sb_start;
		if (!num_sectors || num_sectors > max_sectors)
			num_sectors = max_sectors;
		rdev->sb_start = sb_start;
	}
	sb = FUNC5(rdev->sb_page);
	sb->data_size = FUNC1(num_sectors);
	sb->super_offset = rdev->sb_start;
	sb->sb_csum = FUNC0(sb);
	FUNC4(rdev->mddev, rdev, rdev->sb_start, rdev->sb_size,
		       rdev->sb_page);
	FUNC3(rdev->mddev);
	return num_sectors;

}