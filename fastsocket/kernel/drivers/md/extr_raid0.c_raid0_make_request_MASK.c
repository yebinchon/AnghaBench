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
struct strip_zone {unsigned int dev_start; } ;
struct mddev {unsigned int chunk_sectors; int /*<<< orphan*/  private; } ;
struct md_rdev {unsigned int data_offset; int /*<<< orphan*/  bdev; } ;
struct bio {int bi_rw; unsigned int bi_sector; int bi_vcnt; scalar_t__ bi_idx; int /*<<< orphan*/  bi_bdev; } ;
struct bio_pair {struct bio bio2; struct bio bio1; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_pair*) ; 
 int FUNC4 (struct bio*) ; 
 struct bio_pair* FUNC5 (struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct strip_zone* FUNC7 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*,unsigned int,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC12 (struct mddev*,struct strip_zone*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,unsigned int,unsigned long long,int) ; 
 unsigned int FUNC16 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct mddev *mddev, struct bio *bio)
{
	unsigned int chunk_sects;
	sector_t sector_offset;
	struct strip_zone *zone;
	struct md_rdev *tmp_dev;

	if (FUNC17(bio->bi_rw & BIO_FLUSH)) {
		FUNC13(mddev, bio);
		return 0;
	}

	chunk_sects = mddev->chunk_sectors;
	if (FUNC17(!FUNC9(mddev, chunk_sects, bio))) {
		sector_t sector = bio->bi_sector;
		struct bio_pair *bp;
		/* Sanity check -- queue functions should prevent this happening */
		if ((bio->bi_vcnt != 1 && bio->bi_vcnt != 0) ||
		    bio->bi_idx != 0)
			goto bad_map;
		/* This is a one page bio that upper layers
		 * refuse to split for us, so we need to split it.
		 */
		if (FUNC11(FUNC10(chunk_sects)))
			bp = FUNC5(bio, chunk_sects - (sector &
							   (chunk_sects-1)));
		else
			bp = FUNC5(bio, chunk_sects -
				       FUNC16(sector, chunk_sects));
		if (FUNC18(mddev, &bp->bio1))
			FUNC8(&bp->bio1);
		if (FUNC18(mddev, &bp->bio2))
			FUNC8(&bp->bio2);

		FUNC3(bp);
		return 0;
	}

	sector_offset = bio->bi_sector;
	zone = FUNC7(mddev->private, &sector_offset);
	tmp_dev = FUNC12(mddev, zone, bio->bi_sector,
			     &sector_offset);
	bio->bi_bdev = tmp_dev->bdev;
	bio->bi_sector = sector_offset + zone->dev_start +
		tmp_dev->data_offset;

	if (FUNC17((bio->bi_rw & BIO_DISCARD) &&
		     !FUNC6(FUNC0(bio->bi_bdev)))) {
		/* Just ignore it */
		FUNC1(bio, 0);
		return 0;
	}

	/*
	 * Let the main block layer submit the IO and resolve recursion:
	 */
	return 1;

bad_map:
	FUNC15("md/raid0:%s: make_request bug: can't convert block across chunks"
	       " or bigger than %dk %llu %d\n",
	       FUNC14(mddev), chunk_sects / 2,
	       (unsigned long long)bio->bi_sector, FUNC4(bio) / 2);

	FUNC2(bio);
	return 0;
}