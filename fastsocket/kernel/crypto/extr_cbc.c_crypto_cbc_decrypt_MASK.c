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
struct scatterlist {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_cbc_ctx {struct crypto_cipher* child; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 struct crypto_cbc_ctx* FUNC3 (struct crypto_blkcipher*) ; 
 unsigned int FUNC4 (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*) ; 
 unsigned int FUNC5 (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*) ; 

__attribute__((used)) static int FUNC6(struct blkcipher_desc *desc,
			      struct scatterlist *dst, struct scatterlist *src,
			      unsigned int nbytes)
{
	struct blkcipher_walk walk;
	struct crypto_blkcipher *tfm = desc->tfm;
	struct crypto_cbc_ctx *ctx = FUNC3(tfm);
	struct crypto_cipher *child = ctx->child;
	int err;

	FUNC1(&walk, dst, src, nbytes);
	err = FUNC2(desc, &walk);

	while ((nbytes = walk.nbytes)) {
		if (walk.src.virt.addr == walk.dst.virt.addr)
			nbytes = FUNC4(desc, &walk, child);
		else
			nbytes = FUNC5(desc, &walk, child);
		err = FUNC0(desc, &walk, nbytes);
	}

	return err;
}