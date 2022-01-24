#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct async_chainiv_ctx {int /*<<< orphan*/  state; int /*<<< orphan*/  iv; } ;
struct TYPE_2__ {scalar_t__ givencrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAINIV_STATE_INUSE ; 
 int FUNC0 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct crypto_ablkcipher*) ; 
 struct async_chainiv_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  crypto_default_rng ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_ablkcipher* FUNC6 (struct skcipher_givcrypt_request*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC6(req);
	struct async_chainiv_ctx *ctx = FUNC3(geniv);
	int err = 0;

	if (FUNC7(CHAINIV_STATE_INUSE, &ctx->state))
		goto out;

	if (FUNC2(geniv)->givencrypt !=
	    async_chainiv_givencrypt_first)
		goto unlock;

	FUNC2(geniv)->givencrypt = async_chainiv_givencrypt;
	err = FUNC5(crypto_default_rng, ctx->iv,
				   FUNC4(geniv));

unlock:
	FUNC1(CHAINIV_STATE_INUSE, &ctx->state);

	if (err)
		return err;

out:
	return FUNC0(req);
}