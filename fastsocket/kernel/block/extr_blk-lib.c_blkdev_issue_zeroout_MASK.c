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
struct block_device {int dummy; } ;
struct bio_batch {int flags; int /*<<< orphan*/  done; int /*<<< orphan*/ * wait; } ;
struct bio {struct bio_batch* bi_private; int /*<<< orphan*/  bi_end_io; struct block_device* bi_bdev; scalar_t__ bi_sector; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ BIO_MAX_PAGES ; 
 int BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct bio*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  bio_batch_end_io ; 
 unsigned int FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct block_device *bdev, sector_t sector,
			sector_t nr_sects, gfp_t gfp_mask)
{
	int ret;
	struct bio *bio;
	struct bio_batch bb;
	unsigned int sz;
	FUNC0(wait);

	FUNC4(&bb.done, 1);
	bb.flags = 1 << BIO_UPTODATE;
	bb.wait = &wait;

	ret = 0;
	while (nr_sects != 0) {
		bio = FUNC6(gfp_mask,
				FUNC7(nr_sects, (sector_t)BIO_MAX_PAGES));
		if (!bio) {
			ret = -ENOMEM;
			break;
		}

		bio->bi_sector = sector;
		bio->bi_bdev   = bdev;
		bio->bi_end_io = bio_batch_end_io;
		bio->bi_private = &bb;

		while (nr_sects != 0) {
			sz = FUNC7((sector_t) PAGE_SIZE >> 9 , nr_sects);
			ret = FUNC5(bio, FUNC1(0), sz << 9, 0);
			nr_sects -= ret >> 9;
			sector += ret >> 9;
			if (ret < (sz << 9))
				break;
		}
		ret = 0;
		FUNC3(&bb.done);
		FUNC8(WRITE, bio);
	}

	/* Wait for bios in-flight */
	if (!FUNC2(&bb.done))
		FUNC10(&wait);

	if (!FUNC9(BIO_UPTODATE, &bb.flags))
		/* One of bios in the batch was completed with error.*/
		ret = -EIO;

	return ret;
}