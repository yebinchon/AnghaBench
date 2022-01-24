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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct crypto_cts_ctx {int /*<<< orphan*/  child; } ;
struct blkcipher_desc {int /*<<< orphan*/ * info; int /*<<< orphan*/  flags; int /*<<< orphan*/  tfm; } ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_cts_ctx *ctx,
			   struct blkcipher_desc *desc,
			   struct scatterlist *dst,
			   struct scatterlist *src,
			   unsigned int offset,
			   unsigned int nbytes)
{
	int bsize = FUNC0(desc->tfm);
	u8 tmp[bsize], tmp2[bsize];
	struct blkcipher_desc lcldesc;
	struct scatterlist sgsrc[1], sgdst[1];
	int lastn = nbytes - bsize;
	u8 iv[bsize];
	u8 s[bsize * 2], d[bsize * 2];
	int err;

	if (lastn < 0)
		return -EINVAL;

	FUNC5(sgsrc, 1);
	FUNC5(sgdst, 1);

	FUNC3(s, 0, sizeof(s));
	FUNC4(s, src, offset, nbytes, 0);

	FUNC2(iv, desc->info, bsize);

	lcldesc.tfm = ctx->child;
	lcldesc.info = iv;
	lcldesc.flags = desc->flags;

	FUNC6(&sgsrc[0], s, bsize);
	FUNC6(&sgdst[0], tmp, bsize);
	err = FUNC1(&lcldesc, sgdst, sgsrc, bsize);

	FUNC2(d + bsize, tmp, lastn);

	lcldesc.info = tmp;

	FUNC6(&sgsrc[0], s + bsize, bsize);
	FUNC6(&sgdst[0], tmp2, bsize);
	err = FUNC1(&lcldesc, sgdst, sgsrc, bsize);

	FUNC2(d, tmp2, bsize);

	FUNC4(d, dst, offset, nbytes, 1);

	FUNC2(desc->info, tmp2, bsize);

	return err;
}