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
struct request_queue {int /*<<< orphan*/  (* merge_bvec_fn ) (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ;} ;
struct dm_target {struct crypt_config* private; } ;
struct crypt_config {scalar_t__ start; TYPE_1__* dev; } ;
struct bvec_merge_data {scalar_t__ bi_sector; int /*<<< orphan*/  bi_bdev; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dm_target*,scalar_t__) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ; 

__attribute__((used)) static int FUNC4(struct dm_target *ti, struct bvec_merge_data *bvm,
		       struct bio_vec *biovec, int max_size)
{
	struct crypt_config *cc = ti->private;
	struct request_queue *q = FUNC0(cc->dev->bdev);

	if (!q->merge_bvec_fn)
		return max_size;

	bvm->bi_bdev = cc->dev->bdev;
	bvm->bi_sector = cc->start + FUNC1(ti, bvm->bi_sector);

	return FUNC2(max_size, q->merge_bvec_fn(q, bvm, biovec));
}