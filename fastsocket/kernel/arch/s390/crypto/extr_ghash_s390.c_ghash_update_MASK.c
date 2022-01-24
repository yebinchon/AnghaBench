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
typedef  int /*<<< orphan*/  const u8 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct ghash_desc_ctx {int bytes; int /*<<< orphan*/  const* buffer; } ;
struct ghash_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  KIMD_GHASH ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ghash_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct ghash_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,int) ; 
 struct ghash_desc_ctx* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc,
			 const u8 *src, unsigned int srclen)
{
	struct ghash_desc_ctx *dctx = FUNC5(desc);
	struct ghash_ctx *ctx = FUNC2(desc->tfm);
	unsigned int n;
	u8 *buf = dctx->buffer;
	int ret;

	if (dctx->bytes) {
		u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

		n = FUNC4(srclen, dctx->bytes);
		dctx->bytes -= n;
		srclen -= n;

		FUNC3(pos, src, n);
		src += n;

		if (!dctx->bytes) {
			ret = FUNC1(KIMD_GHASH, ctx, buf,
					      GHASH_BLOCK_SIZE);
			FUNC0(ret != GHASH_BLOCK_SIZE);
		}
	}

	n = srclen & ~(GHASH_BLOCK_SIZE - 1);
	if (n) {
		ret = FUNC1(KIMD_GHASH, ctx, src, n);
		FUNC0(ret != n);
		src += n;
		srclen -= n;
	}

	if (srclen) {
		dctx->bytes = GHASH_BLOCK_SIZE - srclen;
		FUNC3(buf, src, srclen);
	}

	return 0;
}