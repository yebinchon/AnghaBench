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
struct sg_iovec {int /*<<< orphan*/  iov_len; scalar_t__ iov_base; } ;
struct rq_map_data {int dummy; } ;
struct request_queue {unsigned int dma_pad_mask; } ;
struct request {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  cmd_flags; } ;
struct bio {unsigned int bi_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_USER_MAPPED ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  REQ_COPY_USER ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (struct request_queue*,struct rq_map_data*,struct sg_iovec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct request_queue*,int /*<<< orphan*/ *,struct sg_iovec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,struct request*,struct bio*) ; 
 unsigned long FUNC10 (struct request_queue*) ; 
 scalar_t__ FUNC11 (struct request*) ; 

int FUNC12(struct request_queue *q, struct request *rq,
			struct rq_map_data *map_data, struct sg_iovec *iov,
			int iov_count, unsigned int len, gfp_t gfp_mask)
{
	struct bio *bio;
	int i, read = FUNC11(rq) == READ;
	int unaligned = 0;

	if (!iov || iov_count <= 0)
		return -EINVAL;

	for (i = 0; i < iov_count; i++) {
		unsigned long uaddr = (unsigned long)iov[i].iov_base;

		if (!iov[i].iov_len)
			return -EINVAL;

		if (uaddr & FUNC10(q)) {
			unaligned = 1;
			break;
		}
	}

	if (unaligned || (q->dma_pad_mask & len) || map_data)
		bio = FUNC3(q, map_data, iov, iov_count, read,
					gfp_mask);
	else
		bio = FUNC7(q, NULL, iov, iov_count, read, gfp_mask);

	if (FUNC0(bio))
		return FUNC1(bio);

	if (bio->bi_size != len) {
		/*
		 * Grab an extra reference to this bio, as bio_unmap_user()
		 * expects to be able to drop it twice as it happens on the
		 * normal IO completion path
		 */
		FUNC6(bio);
		FUNC4(bio, 0);
		FUNC2(bio);
		return -EINVAL;
	}

	if (!FUNC5(bio, BIO_USER_MAPPED))
		rq->cmd_flags |= REQ_COPY_USER;

	FUNC8(q, &bio);
	FUNC6(bio);
	FUNC9(q, rq, bio);
	rq->buffer = NULL;
	return 0;
}