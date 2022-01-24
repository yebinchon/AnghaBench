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
struct ixp_ctx {int /*<<< orphan*/  nonce; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 unsigned int CTR_RFC3686_NONCE_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct ixp_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *tfm, const u8 *key,
		unsigned int key_len)
{
	struct ixp_ctx *ctx = FUNC1(tfm);

	/* the nonce is stored in bytes at end of key */
	if (key_len < CTR_RFC3686_NONCE_SIZE)
		return -EINVAL;

	FUNC2(ctx->nonce, key + (key_len - CTR_RFC3686_NONCE_SIZE),
			CTR_RFC3686_NONCE_SIZE);

	key_len -= CTR_RFC3686_NONCE_SIZE;
	return FUNC0(tfm, key, key_len);
}