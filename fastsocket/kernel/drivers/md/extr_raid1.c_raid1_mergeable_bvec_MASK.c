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
struct request_queue {int /*<<< orphan*/  (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;struct mddev* queuedata; } ;
struct r1conf {int raid_disks; TYPE_1__* mirrors; } ;
struct mddev {scalar_t__ merge_check_needed; struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; scalar_t__ data_offset; int /*<<< orphan*/  flags; } ;
struct bvec_merge_data {int /*<<< orphan*/  bi_bdev; scalar_t__ bi_sector; } ;
struct bio_vec {int bv_len; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct request_queue *q,
				struct bvec_merge_data *bvm,
				struct bio_vec *biovec)
{
	struct mddev *mddev = q->queuedata;
	struct r1conf *conf = mddev->private;
	sector_t sector = bvm->bi_sector + FUNC1(bvm->bi_bdev);
	int max = biovec->bv_len;

	if (mddev->merge_check_needed) {
		int disk;
		FUNC4();
		for (disk = 0; disk < conf->raid_disks * 2; disk++) {
			struct md_rdev *rdev = FUNC3(
				conf->mirrors[disk].rdev);
			if (rdev && !FUNC7(Faulty, &rdev->flags)) {
				struct request_queue *q =
					FUNC0(rdev->bdev);
				if (q->merge_bvec_fn) {
					bvm->bi_sector = sector +
						rdev->data_offset;
					bvm->bi_bdev = rdev->bdev;
					max = FUNC2(max, q->merge_bvec_fn(
							  q, bvm, biovec));
				}
			}
		}
		FUNC5();
	}
	return max;

}