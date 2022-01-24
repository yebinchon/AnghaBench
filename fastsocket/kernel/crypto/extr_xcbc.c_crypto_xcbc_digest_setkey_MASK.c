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
struct xcbc_tfm_ctx {int /*<<< orphan*/  child; int /*<<< orphan*/ * ctx; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 unsigned long FUNC3 (struct crypto_shash*) ; 
 int FUNC4 (struct crypto_shash*) ; 
 struct xcbc_tfm_ctx* FUNC5 (struct crypto_shash*) ; 
 scalar_t__ ks ; 

__attribute__((used)) static int FUNC6(struct crypto_shash *parent,
				     const u8 *inkey, unsigned int keylen)
{
	unsigned long alignmask = FUNC3(parent);
	struct xcbc_tfm_ctx *ctx = FUNC5(parent);
	int bs = FUNC4(parent);
	u8 *consts = FUNC0(&ctx->ctx[0], alignmask + 1);
	int err = 0;
	u8 key1[bs];

	if ((err = FUNC2(ctx->child, inkey, keylen)))
		return err;

	FUNC1(ctx->child, consts, (u8 *)ks + bs);
	FUNC1(ctx->child, consts + bs, (u8 *)ks + bs * 2);
	FUNC1(ctx->child, key1, (u8 *)ks);

	return FUNC2(ctx->child, key1, bs);

}