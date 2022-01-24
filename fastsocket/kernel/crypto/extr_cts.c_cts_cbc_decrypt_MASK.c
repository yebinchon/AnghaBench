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
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct crypto_cts_ctx *ctx,
			   struct blkcipher_desc *desc,
			   struct scatterlist *dst,
			   struct scatterlist *src,
			   unsigned int offset,
			   unsigned int nbytes)
{
	int bsize = FUNC0(desc->tfm);
	u8 tmp[bsize];
	struct blkcipher_desc lcldesc;
	struct scatterlist sgsrc[1], sgdst[1];
	int lastn = nbytes - bsize;
	u8 iv[bsize];
	u8 s[bsize * 2], d[bsize * 2];
	int err;

	if (lastn < 0)
		return -EINVAL;

	FUNC6(sgsrc, 1);
	FUNC6(sgdst, 1);

	FUNC5(s, src, offset, nbytes, 0);

	lcldesc.tfm = ctx->child;
	lcldesc.info = iv;
	lcldesc.flags = desc->flags;

	/* 1. Decrypt Cn-1 (s) to create Dn (tmp)*/
	FUNC4(iv, 0, sizeof(iv));
	FUNC7(&sgsrc[0], s, bsize);
	FUNC7(&sgdst[0], tmp, bsize);
	err = FUNC1(&lcldesc, sgdst, sgsrc, bsize);
	if (err)
		return err;
	/* 2. Pad Cn with zeros at the end to create C of length BB */
	FUNC4(iv, 0, sizeof(iv));
	FUNC3(iv, s + bsize, lastn);
	/* 3. Exclusive-or Dn (tmp) with C (iv) to create Xn (tmp) */
	FUNC2(tmp, iv, bsize);
	/* 4. Select the first Ln bytes of Xn (tmp) to create Pn */
	FUNC3(d + bsize, tmp, lastn);

	/* 5. Append the tail (BB - Ln) bytes of Xn (tmp) to Cn to create En */
	FUNC3(s + bsize + lastn, tmp + lastn, bsize - lastn);
	/* 6. Decrypt En to create Pn-1 */
	FUNC4(iv, 0, sizeof(iv));
	FUNC7(&sgsrc[0], s + bsize, bsize);
	FUNC7(&sgdst[0], d, bsize);
	err = FUNC1(&lcldesc, sgdst, sgsrc, bsize);

	/* XOR with previous block */
	FUNC2(d, desc->info, bsize);

	FUNC5(d, dst, offset, nbytes, 1);

	FUNC3(desc->info, s, bsize);
	return err;
}