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
struct page {int dummy; } ;
struct mddev {int /*<<< orphan*/  pending_writes; } ;
struct md_rdev {scalar_t__ bdev; scalar_t__ meta_bdev; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct md_rdev* bi_private; int /*<<< orphan*/  bi_sector; scalar_t__ bi_bdev; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int BIO_RW_NOIDLE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int WRITE_FLUSH_FUA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int,struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct bio*) ; 
 int /*<<< orphan*/  super_written ; 

void FUNC4(struct mddev *mddev, struct md_rdev *rdev,
		   sector_t sector, int size, struct page *page)
{
	/* write first size bytes of page to sector of rdev
	 * Increment mddev->pending_writes before returning
	 * and decrement it on completion, waking up sb_wait
	 * if zero is reached.
	 * If an error occurred, call md_error
	 */
	struct bio *bio = FUNC2(GFP_NOIO, 1, mddev);

	bio->bi_bdev = rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev;
	bio->bi_sector = sector;
	FUNC1(bio, page, size, 0);
	bio->bi_private = rdev;
	bio->bi_end_io = super_written;

	FUNC0(&mddev->pending_writes);
	FUNC3((WRITE_FLUSH_FUA & ~(1 << BIO_RW_NOIDLE)), bio);
}