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
struct seqiv_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  salt; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {scalar_t__ givencrypt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct crypto_ablkcipher*) ; 
 struct seqiv_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  crypto_default_rng ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC5 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC5(req);
	struct seqiv_ctx *ctx = FUNC1(geniv);
	int err = 0;

	FUNC6(&ctx->lock);
	if (FUNC0(geniv)->givencrypt != seqiv_givencrypt_first)
		goto unlock;

	FUNC0(geniv)->givencrypt = seqiv_givencrypt;
	err = FUNC3(crypto_default_rng, ctx->salt,
				   FUNC2(geniv));

unlock:
	FUNC7(&ctx->lock);

	if (err)
		return err;

	return FUNC4(req);
}