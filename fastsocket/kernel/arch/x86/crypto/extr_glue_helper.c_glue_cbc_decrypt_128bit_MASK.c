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
struct common_glue_ctx {int /*<<< orphan*/  fpu_blocks_limit; } ;
struct blkcipher_walk {unsigned int nbytes; } ;
struct blkcipher_desc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct common_glue_ctx const*,struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC4 (unsigned int const,int /*<<< orphan*/ ,struct blkcipher_desc*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(const struct common_glue_ctx *gctx,
			    struct blkcipher_desc *desc,
			    struct scatterlist *dst,
			    struct scatterlist *src, unsigned int nbytes)
{
	const unsigned int bsize = 128 / 8;
	bool fpu_enabled = false;
	struct blkcipher_walk walk;
	int err;

	FUNC2(&walk, dst, src, nbytes);
	err = FUNC3(desc, &walk);

	while ((nbytes = walk.nbytes)) {
		fpu_enabled = FUNC4(bsize, gctx->fpu_blocks_limit,
					     desc, fpu_enabled, nbytes);
		nbytes = FUNC0(gctx, desc, &walk);
		err = FUNC1(desc, &walk, nbytes);
	}

	FUNC5(fpu_enabled);
	return err;
}