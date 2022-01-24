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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  xts; void* key; int /*<<< orphan*/  tweak; int /*<<< orphan*/  bit; int /*<<< orphan*/  block; } ;
struct s390_xts_ctx {int key_len; void* key; TYPE_1__ pcc; int /*<<< orphan*/  xts_param; } ;
struct TYPE_9__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_5__ src; TYPE_3__ dst; int /*<<< orphan*/  iv; } ;
struct blkcipher_desc {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int FUNC3 (long,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (long,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct blkcipher_desc *desc, long func,
			 struct s390_xts_ctx *xts_ctx,
			 struct blkcipher_walk *walk)
{
	unsigned int offset = (xts_ctx->key_len >> 1) & 0x10;
	int ret = FUNC2(desc, walk);
	unsigned int nbytes = walk->nbytes;
	unsigned int n;
	u8 *in, *out;
	void *param;

	if (!nbytes)
		goto out;

	FUNC6(xts_ctx->pcc.block, 0, sizeof(xts_ctx->pcc.block));
	FUNC6(xts_ctx->pcc.bit, 0, sizeof(xts_ctx->pcc.bit));
	FUNC6(xts_ctx->pcc.xts, 0, sizeof(xts_ctx->pcc.xts));
	FUNC5(xts_ctx->pcc.tweak, walk->iv, sizeof(xts_ctx->pcc.tweak));
	param = xts_ctx->pcc.key + offset;
	ret = FUNC4(func, param);
	FUNC0(ret < 0);

	FUNC5(xts_ctx->xts_param, xts_ctx->pcc.xts, 16);
	param = xts_ctx->key + offset;
	do {
		/* only use complete blocks */
		n = nbytes & ~(AES_BLOCK_SIZE - 1);
		out = walk->dst.virt.addr;
		in = walk->src.virt.addr;

		ret = FUNC3(func, param, out, in, n);
		FUNC0(ret < 0 || ret != n);

		nbytes &= AES_BLOCK_SIZE - 1;
		ret = FUNC1(desc, walk, nbytes);
	} while ((nbytes = walk->nbytes));
out:
	return ret;
}