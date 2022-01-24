#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct common_glue_ctx {int num_funcs; TYPE_2__* funcs; int /*<<< orphan*/  fpu_blocks_limit; } ;
struct blkcipher_walk {unsigned int nbytes; } ;
struct blkcipher_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctr; } ;
struct TYPE_4__ {TYPE_1__ fn_u; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct common_glue_ctx const*,struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC5 (unsigned int const,int /*<<< orphan*/ ,struct blkcipher_desc*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(const struct common_glue_ctx *gctx,
			  struct blkcipher_desc *desc, struct scatterlist *dst,
			  struct scatterlist *src, unsigned int nbytes)
{
	const unsigned int bsize = 128 / 8;
	bool fpu_enabled = false;
	struct blkcipher_walk walk;
	int err;

	FUNC2(&walk, dst, src, nbytes);
	err = FUNC3(desc, &walk, bsize);

	while ((nbytes = walk.nbytes) >= bsize) {
		fpu_enabled = FUNC5(bsize, gctx->fpu_blocks_limit,
					     desc, fpu_enabled, nbytes);
		nbytes = FUNC0(gctx, desc, &walk);
		err = FUNC1(desc, &walk, nbytes);
	}

	FUNC6(fpu_enabled);

	if (walk.nbytes) {
		FUNC4(
			gctx->funcs[gctx->num_funcs - 1].fn_u.ctr, desc, &walk);
		err = FUNC1(desc, &walk, 0);
	}

	return err;
}