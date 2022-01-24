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
struct crypto_cts_ctx {struct crypto_blkcipher* child; } ;
struct crypto_blkcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_blkcipher*,int) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_blkcipher*,int) ; 
 int FUNC3 (struct crypto_blkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_cts_ctx* FUNC4 (struct crypto_tfm*) ; 
 int FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *parent, const u8 *key,
			     unsigned int keylen)
{
	struct crypto_cts_ctx *ctx = FUNC4(parent);
	struct crypto_blkcipher *child = ctx->child;
	int err;

	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC2(child, FUNC5(parent) &
				       CRYPTO_TFM_REQ_MASK);
	err = FUNC3(child, key, keylen);
	FUNC6(parent, FUNC1(child) &
				     CRYPTO_TFM_RES_MASK);
	return err;
}