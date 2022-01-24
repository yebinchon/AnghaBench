#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct common_glue_ctx {unsigned int num_funcs; TYPE_6__* funcs; int /*<<< orphan*/  fpu_blocks_limit; } ;
struct TYPE_9__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* ecb ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {unsigned int const num_blocks; TYPE_5__ fn_u; } ;

/* Variables and functions */
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int FUNC1 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int const,int /*<<< orphan*/ ,struct blkcipher_desc*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const struct common_glue_ctx *gctx,
				   struct blkcipher_desc *desc,
				   struct blkcipher_walk *walk)
{
	void *ctx = FUNC2(desc->tfm);
	const unsigned int bsize = 128 / 8;
	unsigned int nbytes, i, func_bytes;
	bool fpu_enabled = false;
	int err;

	err = FUNC1(desc, walk);

	while ((nbytes = walk->nbytes)) {
		u8 *wsrc = walk->src.virt.addr;
		u8 *wdst = walk->dst.virt.addr;

		fpu_enabled = FUNC3(bsize, gctx->fpu_blocks_limit,
					     desc, fpu_enabled, nbytes);

		for (i = 0; i < gctx->num_funcs; i++) {
			func_bytes = bsize * gctx->funcs[i].num_blocks;

			/* Process multi-block batch */
			if (nbytes >= func_bytes) {
				do {
					gctx->funcs[i].fn_u.ecb(ctx, wdst,
								wsrc);

					wsrc += func_bytes;
					wdst += func_bytes;
					nbytes -= func_bytes;
				} while (nbytes >= func_bytes);

				if (nbytes < bsize)
					goto done;
			}
		}

done:
		err = FUNC0(desc, walk, nbytes);
	}

	FUNC4(fpu_enabled);
	return err;
}