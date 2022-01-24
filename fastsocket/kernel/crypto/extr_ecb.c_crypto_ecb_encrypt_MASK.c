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
struct crypto_ecb_ctx {struct crypto_cipher* child; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;
struct TYPE_2__ {int /*<<< orphan*/  cia_encrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 struct crypto_ecb_ctx* FUNC1 (struct crypto_blkcipher*) ; 
 TYPE_1__* FUNC2 (struct crypto_cipher*) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*,struct crypto_cipher*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct blkcipher_desc *desc,
			      struct scatterlist *dst, struct scatterlist *src,
			      unsigned int nbytes)
{
	struct blkcipher_walk walk;
	struct crypto_blkcipher *tfm = desc->tfm;
	struct crypto_ecb_ctx *ctx = FUNC1(tfm);
	struct crypto_cipher *child = ctx->child;

	FUNC0(&walk, dst, src, nbytes);
	return FUNC3(desc, &walk, child,
				FUNC2(child)->cia_encrypt);
}