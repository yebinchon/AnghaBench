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
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int /*<<< orphan*/  rq_disk; struct bio* biotail; struct bio* bio; int /*<<< orphan*/  __data_len; int /*<<< orphan*/  buffer; int /*<<< orphan*/  nr_phys_segments; } ;
struct bio {int bi_rw; TYPE_1__* bi_bdev; int /*<<< orphan*/  bi_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int REQ_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bio*) ; 

void FUNC3(struct request_queue *q, struct request *rq,
		     struct bio *bio)
{
	/* Bit 0 (R/W) is identical in rq->cmd_flags and bio->bi_rw */
	rq->cmd_flags |= bio->bi_rw & REQ_WRITE;

	if (FUNC1(bio)) {
		rq->nr_phys_segments = FUNC2(q, bio);
		rq->buffer = FUNC0(bio);
	}
	rq->__data_len = bio->bi_size;
	rq->bio = rq->biotail = bio;

	if (bio->bi_bdev)
		rq->rq_disk = bio->bi_bdev->bd_disk;
}