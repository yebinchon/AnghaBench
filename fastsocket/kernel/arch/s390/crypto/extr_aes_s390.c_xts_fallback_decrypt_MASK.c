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
struct s390_xts_ctx {struct crypto_blkcipher* fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 struct s390_xts_ctx* FUNC0 (struct crypto_blkcipher*) ; 
 unsigned int FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct blkcipher_desc *desc,
		struct scatterlist *dst, struct scatterlist *src,
		unsigned int nbytes)
{
	struct s390_xts_ctx *xts_ctx = FUNC0(desc->tfm);
	struct crypto_blkcipher *tfm;
	unsigned int ret;

	tfm = desc->tfm;
	desc->tfm = xts_ctx->fallback;

	ret = FUNC1(desc, dst, src, nbytes);

	desc->tfm = tfm;
	return ret;
}