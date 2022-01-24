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
struct request {void* special; } ;
struct bio {struct bio* bi_next; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_2__ {struct bio* nxbio; struct request* rq; int /*<<< orphan*/  buf; } ;
struct aoedev {TYPE_1__ ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aoedev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct aoedev *d)
{
	struct request *rq;
	struct bio *bio;
	unsigned long n;

	FUNC1(d, d->ip.buf);

	rq = d->ip.rq;
	if (rq == NULL)
		return;
	while ((bio = d->ip.nxbio)) {
		FUNC2(BIO_UPTODATE, &bio->bi_flags);
		d->ip.nxbio = bio->bi_next;
		n = (unsigned long) rq->special;
		rq->special = (void *) --n;
	}
	if ((unsigned long) rq->special == 0)
		FUNC0(d, rq, 0);
}