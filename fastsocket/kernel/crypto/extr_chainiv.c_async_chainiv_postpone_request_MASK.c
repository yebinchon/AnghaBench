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
struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct async_chainiv_ctx {int err; int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAINIV_STATE_INUSE ; 
 int FUNC0 (struct async_chainiv_ctx*) ; 
 struct async_chainiv_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC3 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC3(req);
	struct async_chainiv_ctx *ctx = FUNC1(geniv);
	int err;

	FUNC4(&ctx->lock);
	err = FUNC2(&ctx->queue, req);
	FUNC5(&ctx->lock);

	if (FUNC6(CHAINIV_STATE_INUSE, &ctx->state))
		return err;

	ctx->err = err;
	return FUNC0(ctx);
}