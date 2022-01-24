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
struct crypto_tfm {int dummy; } ;
struct aesni_lrw_ctx {int /*<<< orphan*/  lrw_table; int /*<<< orphan*/  raw_aes_ctx; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int FUNC0 (struct crypto_tfm*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct aesni_lrw_ctx* FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm, const u8 *key,
			    unsigned int keylen)
{
	struct aesni_lrw_ctx *ctx = FUNC1(tfm);
	int err;

	err = FUNC0(tfm, ctx->raw_aes_ctx, key,
				 keylen - AES_BLOCK_SIZE);
	if (err)
		return err;

	return FUNC2(&ctx->lrw_table, key + keylen - AES_BLOCK_SIZE);
}