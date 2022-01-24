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
struct request {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  bio; int /*<<< orphan*/  cmd_flags; } ;
struct bio {int bi_rw; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int BIO_RW ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  REQ_COPY_USER ; 
 scalar_t__ WRITE ; 
 struct bio* FUNC2 (struct request_queue*,void*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC3 (struct request_queue*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,void*,unsigned int) ; 
 int FUNC7 (struct request_queue*,struct request*,struct bio*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int FUNC9 (struct request_queue*) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct request_queue *q, struct request *rq, void *kbuf,
		    unsigned int len, gfp_t gfp_mask)
{
	int reading = FUNC10(rq) == READ;
	int do_copy = 0;
	struct bio *bio;
	int ret;

	if (len > (FUNC9(q) << 9))
		return -EINVAL;
	if (!len || !kbuf)
		return -EINVAL;

	do_copy = !FUNC6(q, kbuf, len) || FUNC8(kbuf);
	if (do_copy)
		bio = FUNC2(q, kbuf, len, gfp_mask, reading);
	else
		bio = FUNC3(q, kbuf, len, gfp_mask);

	if (FUNC0(bio))
		return FUNC1(bio);

	if (FUNC10(rq) == WRITE)
		bio->bi_rw |= (1 << BIO_RW);

	if (do_copy)
		rq->cmd_flags |= REQ_COPY_USER;

	ret = FUNC7(q, rq, bio);
	if (FUNC11(ret)) {
		/* request is too big */
		FUNC4(bio);
		return ret;
	}

	FUNC5(q, &rq->bio);
	rq->buffer = NULL;
	return 0;
}