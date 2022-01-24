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
struct crypto_rfc3686_ctx {int /*<<< orphan*/  nonce; struct crypto_ablkcipher* child; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 unsigned int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int) ; 
 struct crypto_rfc3686_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ablkcipher*,int) ; 
 int FUNC4 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ablkcipher *parent,
				 const u8 *key, unsigned int keylen)
{
	struct crypto_rfc3686_ctx *ctx = FUNC1(parent);
	struct crypto_ablkcipher *child = ctx->child;
	int err;

	/* the nonce is stored in bytes at end of key */
	if (keylen < CTR_RFC3686_NONCE_SIZE)
		return -EINVAL;

	FUNC5(ctx->nonce, key + (keylen - CTR_RFC3686_NONCE_SIZE),
	       CTR_RFC3686_NONCE_SIZE);

	keylen -= CTR_RFC3686_NONCE_SIZE;

	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC3(child, FUNC2(parent) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC4(child, key, keylen);
	FUNC3(parent, FUNC2(child) &
				    CRYPTO_TFM_RES_MASK);

	return err;
}