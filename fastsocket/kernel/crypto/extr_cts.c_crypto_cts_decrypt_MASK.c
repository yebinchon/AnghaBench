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
struct scatterlist {int dummy; } ;
struct crypto_cts_ctx {int /*<<< orphan*/  child; } ;
struct blkcipher_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  info; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_cts_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int FUNC3 (struct crypto_cts_ctx*,struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct blkcipher_desc *desc,
			      struct scatterlist *dst, struct scatterlist *src,
			      unsigned int nbytes)
{
	struct crypto_cts_ctx *ctx = FUNC1(desc->tfm);
	int bsize = FUNC0(desc->tfm);
	int tot_blocks = (nbytes + bsize - 1) / bsize;
	int cbc_blocks = tot_blocks > 2 ? tot_blocks - 2 : 0;
	struct blkcipher_desc lcldesc;
	int err;

	lcldesc.tfm = ctx->child;
	lcldesc.info = desc->info;
	lcldesc.flags = desc->flags;

	if (tot_blocks == 1) {
		err = FUNC2(&lcldesc, dst, src, bsize);
	} else if (nbytes <= bsize * 2) {
		err = FUNC3(ctx, desc, dst, src, 0, nbytes);
	} else {
		/* do normal function for tot_blocks - 2 */
		err = FUNC2(&lcldesc, dst, src,
							cbc_blocks * bsize);
		if (err == 0) {
			/* do cts for final two blocks */
			err = FUNC3(ctx, desc, dst, src,
						cbc_blocks * bsize,
						nbytes - (cbc_blocks * bsize));
		}
	}
	return err;
}