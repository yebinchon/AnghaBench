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
struct s390_xts_ctx {int key_len; int /*<<< orphan*/  enc; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 struct s390_xts_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct blkcipher_desc*,int /*<<< orphan*/ ,struct s390_xts_ctx*,struct blkcipher_walk*) ; 
 int FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct blkcipher_desc *desc,
			   struct scatterlist *dst, struct scatterlist *src,
			   unsigned int nbytes)
{
	struct s390_xts_ctx *xts_ctx = FUNC1(desc->tfm);
	struct blkcipher_walk walk;

	if (FUNC2(xts_ctx->key_len == 48))
		return FUNC4(desc, dst, src, nbytes);

	FUNC0(&walk, dst, src, nbytes);
	return FUNC3(desc, xts_ctx->enc, xts_ctx, &walk);
}