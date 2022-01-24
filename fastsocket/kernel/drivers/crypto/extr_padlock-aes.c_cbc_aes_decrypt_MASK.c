#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {TYPE_3__ virt; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int /*<<< orphan*/  iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;
struct TYPE_10__ {int /*<<< orphan*/  encrypt; int /*<<< orphan*/  decrypt; } ;
struct aes_ctx {TYPE_5__ cword; int /*<<< orphan*/  D; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 struct aes_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC3 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct blkcipher_desc *desc,
			   struct scatterlist *dst, struct scatterlist *src,
			   unsigned int nbytes)
{
	struct aes_ctx *ctx = FUNC0(desc->tfm);
	struct blkcipher_walk walk;
	int err;
	int ts_state;

	FUNC6(&ctx->cword.encrypt);

	FUNC2(&walk, dst, src, nbytes);
	err = FUNC3(desc, &walk);

	ts_state = FUNC5();
	while ((nbytes = walk.nbytes)) {
		FUNC8(walk.src.virt.addr, walk.dst.virt.addr,
				   ctx->D, walk.iv, &ctx->cword.decrypt,
				   nbytes / AES_BLOCK_SIZE);
		nbytes &= AES_BLOCK_SIZE - 1;
		err = FUNC1(desc, &walk, nbytes);
	}

	FUNC4(ts_state);

	FUNC7(&ctx->cword.encrypt);

	return err;
}