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
typedef  int /*<<< orphan*/  u8 ;
struct s390_aes_ctx {int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int /*<<< orphan*/ * iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,int) ; 
 int FUNC3 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ctrblk ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct blkcipher_desc *desc, long func,
			 struct s390_aes_ctx *sctx, struct blkcipher_walk *walk)
{
	int ret = FUNC2(desc, walk, AES_BLOCK_SIZE);
	unsigned int i, n, nbytes;
	u8 buf[AES_BLOCK_SIZE];
	u8 *out, *in;

	if (!walk->nbytes)
		return ret;

	FUNC5(ctrblk, walk->iv, AES_BLOCK_SIZE);
	while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
		out = walk->dst.virt.addr;
		in = walk->src.virt.addr;
		while (nbytes >= AES_BLOCK_SIZE) {
			/* only use complete blocks, max. PAGE_SIZE */
			n = (nbytes > PAGE_SIZE) ? PAGE_SIZE :
						 nbytes & ~(AES_BLOCK_SIZE - 1);
			for (i = AES_BLOCK_SIZE; i < n; i += AES_BLOCK_SIZE) {
				FUNC5(ctrblk + i, ctrblk + i - AES_BLOCK_SIZE,
				       AES_BLOCK_SIZE);
				FUNC4(ctrblk + i, AES_BLOCK_SIZE);
			}
			ret = FUNC3(func, sctx->key, out, in, n, ctrblk);
			FUNC0(ret < 0 || ret != n);
			if (n > AES_BLOCK_SIZE)
				FUNC5(ctrblk, ctrblk + n - AES_BLOCK_SIZE,
				       AES_BLOCK_SIZE);
			FUNC4(ctrblk, AES_BLOCK_SIZE);
			out += n;
			in += n;
			nbytes -= n;
		}
		ret = FUNC1(desc, walk, nbytes);
	}
	/*
	 * final block may be < AES_BLOCK_SIZE, copy only nbytes
	 */
	if (nbytes) {
		out = walk->dst.virt.addr;
		in = walk->src.virt.addr;
		ret = FUNC3(func, sctx->key, buf, in,
				       AES_BLOCK_SIZE, ctrblk);
		FUNC0(ret < 0 || ret != AES_BLOCK_SIZE);
		FUNC5(out, buf, nbytes);
		FUNC4(ctrblk, AES_BLOCK_SIZE);
		ret = FUNC1(desc, walk, 0);
	}
	FUNC5(walk->iv, ctrblk, AES_BLOCK_SIZE);
	return ret;
}