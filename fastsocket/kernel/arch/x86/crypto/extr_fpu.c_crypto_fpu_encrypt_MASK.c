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
struct scatterlist {int dummy; } ;
struct crypto_fpu_ctx {struct crypto_blkcipher* child; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {int flags; struct crypto_blkcipher* tfm; int /*<<< orphan*/  info; } ;
struct TYPE_2__ {int (* encrypt ) (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;} ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 TYPE_1__* FUNC0 (struct crypto_blkcipher*) ; 
 struct crypto_fpu_ctx* FUNC1 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct blkcipher_desc *desc_in,
			      struct scatterlist *dst, struct scatterlist *src,
			      unsigned int nbytes)
{
	int err;
	struct crypto_fpu_ctx *ctx = FUNC1(desc_in->tfm);
	struct crypto_blkcipher *child = ctx->child;
	struct blkcipher_desc desc = {
		.tfm = child,
		.info = desc_in->info,
		.flags = desc_in->flags & ~CRYPTO_TFM_REQ_MAY_SLEEP,
	};

	FUNC2();
	err = FUNC0(desc.tfm)->encrypt(&desc, dst, src, nbytes);
	FUNC3();
	return err;
}