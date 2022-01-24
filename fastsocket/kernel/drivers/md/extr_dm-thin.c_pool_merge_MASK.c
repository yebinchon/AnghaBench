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
struct pool_c {TYPE_1__* data_dev; } ;
struct dm_target {struct pool_c* private; } ;
struct bvec_merge_data {int /*<<< orphan*/  bi_bdev; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bvec_merge_data*,struct bio_vec*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct bvec_merge_data *bvm,
		      struct bio_vec *biovec, int max_size)
{
	struct pool_c *pt = ti->private;
	struct request_queue *q = FUNC0(pt->data_dev->bdev);

	if (!q->merge_bvec_fn)
		return max_size;

	bvm->bi_bdev = pt->data_dev->bdev;

	return FUNC1(max_size, q->merge_bvec_fn(q, bvm, biovec));
}