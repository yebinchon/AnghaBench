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
struct request {void* special; struct bio* bio; } ;
struct buf {int dummy; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_2__ {struct buf* buf; struct request* rq; struct bio* nxbio; } ;
struct aoedev {TYPE_1__ ip; int /*<<< orphan*/  bufpool; struct request_queue* blkq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct request* FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*,struct request*,struct bio*) ; 
 struct buf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct request*) ; 

__attribute__((used)) static struct buf *
FUNC6(struct aoedev *d)
{
	struct request *rq;
	struct request_queue *q;
	struct buf *buf;
	struct bio *bio;

	q = d->blkq;
	if (q == NULL)
		return NULL;	/* initializing */
	if (d->ip.buf)
		return d->ip.buf;
	rq = d->ip.rq;
	if (rq == NULL) {
		rq = FUNC0(q);
		if (rq == NULL)
			return NULL;
		FUNC1(rq);
		d->ip.rq = rq;
		d->ip.nxbio = rq->bio;
		rq->special = (void *) FUNC5(rq);
	}
	buf = FUNC3(d->bufpool, GFP_ATOMIC);
	if (buf == NULL) {
		FUNC4("aoe: nextbuf: unable to mempool_alloc!\n");
		return NULL;
	}
	bio = d->ip.nxbio;
	FUNC2(buf, rq, bio);
	bio = bio->bi_next;
	d->ip.nxbio = bio;
	if (bio == NULL)
		d->ip.rq = NULL;
	return d->ip.buf = buf;
}