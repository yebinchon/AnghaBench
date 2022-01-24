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
struct request_queue {int dummy; } ;
struct request {char* sense; scalar_t__ errors; int /*<<< orphan*/ * end_io_data; scalar_t__ sense_len; int /*<<< orphan*/  ref_count; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  sense ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  blk_end_sync_rq ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct gendisk*,struct request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct request_queue *q, struct gendisk *bd_disk,
		   struct request *rq, int at_head)
{
	FUNC0(wait);
	char sense[SCSI_SENSE_BUFFERSIZE];
	int err = 0;

	/*
	 * we need an extra reference to the request, so we can look at
	 * it after io completion
	 */
	rq->ref_count++;

	if (!rq->sense) {
		FUNC2(sense, 0, sizeof(sense));
		rq->sense = sense;
		rq->sense_len = 0;
	}

	rq->end_io_data = &wait;
	FUNC1(q, bd_disk, rq, at_head, blk_end_sync_rq);
	FUNC3(&wait);

	if (rq->errors)
		err = -EIO;

	return err;
}