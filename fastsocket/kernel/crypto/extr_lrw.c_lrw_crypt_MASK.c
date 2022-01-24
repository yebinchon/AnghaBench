#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct lrw_table_ctx {int /*<<< orphan*/ * mulinc; int /*<<< orphan*/  table; } ;
struct lrw_crypt_req {unsigned int const tbuflen; int /*<<< orphan*/  crypt_ctx; int /*<<< orphan*/  (* crypt_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ;int /*<<< orphan*/ * tbuf; struct lrw_table_ctx* table_ctx; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; scalar_t__ iv; } ;
struct blkcipher_desc {int dummy; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int LRW_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC4 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC10(struct blkcipher_desc *desc, struct scatterlist *sdst,
	      struct scatterlist *ssrc, unsigned int nbytes,
	      struct lrw_crypt_req *req)
{
	const unsigned int bsize = LRW_BLOCK_SIZE;
	const unsigned int max_blks = req->tbuflen / bsize;
	struct lrw_table_ctx *ctx = req->table_ctx;
	struct blkcipher_walk walk;
	unsigned int nblocks;
	be128 *iv, *src, *dst, *t;
	be128 *t_buf = req->tbuf;
	int err, i;

	FUNC0(max_blks < 1);

	FUNC3(&walk, sdst, ssrc, nbytes);

	err = FUNC4(desc, &walk);
	nbytes = walk.nbytes;
	if (!nbytes)
		return err;

	nblocks = FUNC8(walk.nbytes / bsize, max_blks);
	src = (be128 *)walk.src.virt.addr;
	dst = (be128 *)walk.dst.virt.addr;

	/* calculate first value of T */
	iv = (be128 *)walk.iv;
	t_buf[0] = *iv;

	/* T <- I*Key2 */
	FUNC6(&t_buf[0], ctx->table);

	i = 0;
	goto first;

	for (;;) {
		do {
			for (i = 0; i < nblocks; i++) {
				/* T <- I*Key2, using the optimization
				 * discussed in the specification */
				FUNC1(&t_buf[i], t,
						&ctx->mulinc[FUNC5(iv)]);
				FUNC7(iv);
first:
				t = &t_buf[i];

				/* PP <- T xor P */
				FUNC1(dst + i, t, src + i);
			}

			/* CC <- E(Key2,PP) */
			req->crypt_fn(req->crypt_ctx, (u8 *)dst,
				      nblocks * bsize);

			/* C <- T xor CC */
			for (i = 0; i < nblocks; i++)
				FUNC1(dst + i, dst + i, &t_buf[i]);

			src += nblocks;
			dst += nblocks;
			nbytes -= nblocks * bsize;
			nblocks = FUNC8(nbytes / bsize, max_blks);
		} while (nblocks > 0);

		err = FUNC2(desc, &walk, nbytes);
		nbytes = walk.nbytes;
		if (!nbytes)
			break;

		nblocks = FUNC8(nbytes / bsize, max_blks);
		src = (be128 *)walk.src.virt.addr;
		dst = (be128 *)walk.dst.virt.addr;
	}

	return err;
}