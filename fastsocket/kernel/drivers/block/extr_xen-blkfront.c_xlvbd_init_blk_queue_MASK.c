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
typedef  int /*<<< orphan*/  u16 ;
struct request_queue {int dummy; } ;
struct gendisk {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKIF_MAX_SEGMENTS_PER_REQUEST ; 
 int /*<<< orphan*/  BLK_BOUNCE_ANY ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_VIRT ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  blkif_io_lock ; 
 int /*<<< orphan*/  do_blkif_request ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct request_queue*) ; 

__attribute__((used)) static int FUNC9(struct gendisk *gd, u16 sector_size)
{
	struct request_queue *rq;

	rq = FUNC0(do_blkif_request, &blkif_io_lock);
	if (rq == NULL)
		return -1;

	FUNC8(QUEUE_FLAG_VIRT, rq);

	/* Hard sector size and max sectors impersonate the equiv. hardware. */
	FUNC3(rq, sector_size);
	FUNC4(rq, 512);

	/* Each segment in a request is up to an aligned page in size. */
	FUNC7(rq, PAGE_SIZE - 1);
	FUNC5(rq, PAGE_SIZE);

	/* Ensure a merged request will fit in a single I/O ring slot. */
	FUNC6(rq, BLKIF_MAX_SEGMENTS_PER_REQUEST);

	/* Make sure buffer addresses are sector-aligned. */
	FUNC2(rq, 511);

	/* Make sure we don't use bounce buffers. */
	FUNC1(rq, BLK_BOUNCE_ANY);

	gd->queue = rq;

	return 0;
}