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
struct xcbc_tfm_ctx {struct crypto_cipher* child; } ;
struct xcbc_desc_ctx {unsigned int len; int /*<<< orphan*/ * ctx; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 unsigned long FUNC2 (struct crypto_shash*) ; 
 int FUNC3 (struct crypto_shash*) ; 
 struct xcbc_tfm_ctx* FUNC4 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct xcbc_desc_ctx* FUNC7 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *pdesc, const u8 *p,
				     unsigned int len)
{
	struct crypto_shash *parent = pdesc->tfm;
	unsigned long alignmask = FUNC2(parent);
	struct xcbc_tfm_ctx *tctx = FUNC4(parent);
	struct xcbc_desc_ctx *ctx = FUNC7(pdesc);
	struct crypto_cipher *tfm = tctx->child;
	int bs = FUNC3(parent);
	u8 *odds = FUNC0(&ctx->ctx[0], alignmask + 1);
	u8 *prev = odds + bs;

	/* checking the data can fill the block */
	if ((ctx->len + len) <= bs) {
		FUNC6(odds + ctx->len, p, len);
		ctx->len += len;
		return 0;
	}

	/* filling odds with new data and encrypting it */
	FUNC6(odds + ctx->len, p, bs - ctx->len);
	len -= bs - ctx->len;
	p += bs - ctx->len;

	FUNC5(prev, odds, bs);
	FUNC1(tfm, prev, prev);

	/* clearing the length */
	ctx->len = 0;

	/* encrypting the rest of data */
	while (len > bs) {
		FUNC5(prev, p, bs);
		FUNC1(tfm, prev, prev);
		p += bs;
		len -= bs;
	}

	/* keeping the surplus of blocksize */
	if (len) {
		FUNC6(odds, p, len);
		ctx->len = len;
	}

	return 0;
}