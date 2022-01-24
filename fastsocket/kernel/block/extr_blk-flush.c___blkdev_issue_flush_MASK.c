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
struct request_queue {int /*<<< orphan*/  make_request_fn; } ;
struct block_device {int /*<<< orphan*/ * bd_disk; } ;
struct bio {int /*<<< orphan*/  bi_sector; int /*<<< orphan*/ * bi_private; struct block_device* bi_bdev; int /*<<< orphan*/  bi_end_io; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  WRITE_FLUSH ; 
 struct request_queue* FUNC1 (struct block_device*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_end_flush ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct block_device *bdev, gfp_t gfp_mask,
		sector_t *error_sector)
{
	FUNC0(wait);
	struct request_queue *q;
	struct bio *bio;
	int ret = 0;

	if (bdev->bd_disk == NULL)
		return -ENXIO;

	q = FUNC1(bdev);
	if (!q)
		return -ENXIO;

	/*
	 * some block devices may not have their queue correctly set up here
	 * (e.g. loop device without a backing file) and so issuing a flush
	 * here will panic. Ensure there is a request function before issuing
	 * the flush.
	 */
	if (!q->make_request_fn)
		return -ENXIO;

	bio = FUNC2(gfp_mask, 0);
	bio->bi_end_io = bio_end_flush;
	bio->bi_bdev = bdev;
	bio->bi_private = &wait;

	FUNC4(bio);
	FUNC6(WRITE_FLUSH, bio);
	FUNC7(&wait);

	/*
	 * The driver must store the error location in ->bi_sector, if
	 * it supports it. For non-stacked drivers, this should be
	 * copied from blk_rq_pos(rq).
	 */
	if (error_sector)
               *error_sector = bio->bi_sector;

	if (!FUNC3(bio, BIO_UPTODATE))
		ret = -EIO;

	FUNC5(bio);
	return ret;
}