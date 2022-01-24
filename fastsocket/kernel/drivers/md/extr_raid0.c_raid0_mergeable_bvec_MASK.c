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
struct request_queue {int /*<<< orphan*/  (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;struct mddev* queuedata; } ;
struct r0conf {int /*<<< orphan*/  has_merge_bvec; } ;
struct mddev {unsigned int chunk_sectors; struct r0conf* private; } ;
struct md_rdev {unsigned int data_offset; int /*<<< orphan*/  bdev; } ;
struct bvec_merge_data {unsigned int bi_sector; int bi_size; int /*<<< orphan*/  bi_bdev; } ;
struct bio_vec {int bv_len; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 struct strip_zone* FUNC1 (struct r0conf*,unsigned int*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 struct md_rdev* FUNC4 (struct mddev*,struct strip_zone*,unsigned int,unsigned int*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ; 

__attribute__((used)) static int FUNC8(struct request_queue *q,
				struct bvec_merge_data *bvm,
				struct bio_vec *biovec)
{
	struct mddev *mddev = q->queuedata;
	struct r0conf *conf = mddev->private;
	sector_t sector = bvm->bi_sector + FUNC2(bvm->bi_bdev);
	sector_t sector_offset = sector;
	int max;
	unsigned int chunk_sectors = mddev->chunk_sectors;
	unsigned int bio_sectors = bvm->bi_size >> 9;
	struct strip_zone *zone;
	struct md_rdev *rdev;
	struct request_queue *subq;

	if (FUNC3(chunk_sectors))
		max =  (chunk_sectors - ((sector & (chunk_sectors-1))
						+ bio_sectors)) << 9;
	else
		max =  (chunk_sectors - (FUNC6(sector, chunk_sectors)
						+ bio_sectors)) << 9;
	if (max < 0)
		max = 0; /* bio_add cannot handle a negative return */
	if (max <= biovec->bv_len && bio_sectors == 0)
		return biovec->bv_len;
	if (max < biovec->bv_len)
		/* too small already, no need to check further */
		return max;
	if (!conf->has_merge_bvec)
		return max;

	/* May need to check subordinate device */
	sector = sector_offset;
	zone = FUNC1(mddev->private, &sector_offset);
	rdev = FUNC4(mddev, zone, sector, &sector_offset);
	subq = FUNC0(rdev->bdev);
	if (subq->merge_bvec_fn) {
		bvm->bi_bdev = rdev->bdev;
		bvm->bi_sector = sector_offset + zone->dev_start +
			rdev->data_offset;
		return FUNC5(max, subq->merge_bvec_fn(subq, bvm, biovec));
	} else
		return max;
}