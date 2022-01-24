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
struct salsa20_ctx {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; int /*<<< orphan*/  iv; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;

/* Variables and functions */
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,int) ; 
 struct salsa20_ctx* FUNC3 (struct crypto_blkcipher*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct salsa20_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct salsa20_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct blkcipher_desc *desc,
		   struct scatterlist *dst, struct scatterlist *src,
		   unsigned int nbytes)
{
	struct blkcipher_walk walk;
	struct crypto_blkcipher *tfm = desc->tfm;
	struct salsa20_ctx *ctx = FUNC3(tfm);
	int err;

	FUNC1(&walk, dst, src, nbytes);
	err = FUNC2(desc, &walk, 64);

	FUNC6(ctx, walk.iv);

	if (FUNC4(walk.nbytes == nbytes))
	{
		FUNC5(ctx, walk.dst.virt.addr,
				      walk.src.virt.addr, nbytes);
		return FUNC0(desc, &walk, 0);
	}

	while (walk.nbytes >= 64) {
		FUNC5(ctx, walk.dst.virt.addr,
				      walk.src.virt.addr,
				      walk.nbytes - (walk.nbytes % 64));
		err = FUNC0(desc, &walk, walk.nbytes % 64);
	}

	if (walk.nbytes) {
		FUNC5(ctx, walk.dst.virt.addr,
				      walk.src.virt.addr, walk.nbytes);
		err = FUNC0(desc, &walk, 0);
	}

	return err;
}