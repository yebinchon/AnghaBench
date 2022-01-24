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
struct skcipher_givcrypt_request {int /*<<< orphan*/  giv; } ;
struct crypto_ablkcipher {int dummy; } ;
struct async_chainiv_ctx {int /*<<< orphan*/  iv; scalar_t__ err; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int FUNC0 (struct async_chainiv_ctx*) ; 
 struct async_chainiv_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC2 (struct ablkcipher_request*) ; 
 unsigned int FUNC3 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct ablkcipher_request* FUNC5 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC6 (struct skcipher_givcrypt_request*) ; 

__attribute__((used)) static int FUNC7(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC6(req);
	struct async_chainiv_ctx *ctx = FUNC1(geniv);
	struct ablkcipher_request *subreq = FUNC5(req);
	unsigned int ivsize = FUNC3(geniv);

	FUNC4(req->giv, ctx->iv, ivsize);
	FUNC4(subreq->info, ctx->iv, ivsize);

	ctx->err = FUNC2(subreq);
	if (ctx->err)
		goto out;

	FUNC4(ctx->iv, subreq->info, ivsize);

out:
	return FUNC0(ctx);
}