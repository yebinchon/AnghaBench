#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio {int bi_sector; TYPE_1__* bi_bdev; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct bio *bio, unsigned int nr_sectors)
{
	sector_t maxsector;

	if (!nr_sectors)
		return 0;

	/* Test device or partition size, when known. */
	maxsector = FUNC1(bio->bi_bdev->bd_inode) >> 9;
	if (maxsector) {
		sector_t sector = bio->bi_sector;

		if (maxsector < nr_sectors || maxsector - nr_sectors < sector) {
			/*
			 * This may well happen - the kernel calls bread()
			 * without checking the size of the device, e.g., when
			 * mounting a device.
			 */
			FUNC0(bio);
			return 1;
		}
	}

	return 0;
}