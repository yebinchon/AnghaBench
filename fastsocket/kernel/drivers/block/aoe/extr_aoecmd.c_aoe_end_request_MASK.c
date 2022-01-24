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
struct request {struct bio* bio; } ;
struct bio {int /*<<< orphan*/  bi_flags; int /*<<< orphan*/  bi_size; } ;
struct TYPE_2__ {struct request* rq; } ;
struct aoedev {TYPE_1__ ip; struct request_queue* blkq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct aoedev *d, struct request *rq, int fastfail)
{
	struct bio *bio;
	int bok;
	struct request_queue *q;

	q = d->blkq;
	if (rq == d->ip.rq)
		d->ip.rq = NULL;
	do {
		bio = rq->bio;
		bok = !fastfail && FUNC2(BIO_UPTODATE, &bio->bi_flags);
	} while (FUNC0(rq, bok ? 0 : -EIO, bio->bi_size));

	/* cf. http://lkml.org/lkml/2006/10/31/28 */
	if (!fastfail)
		FUNC1(q);
}