#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct TYPE_4__ {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct skcipher_givcrypt_request {int /*<<< orphan*/  giv; TYPE_2__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct chainiv_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  iv; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 struct chainiv_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 int FUNC4 (struct ablkcipher_request*) ; 
 unsigned int FUNC5 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ablkcipher*) ; 
 struct ablkcipher_request* FUNC8 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC9 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC9(req);
	struct chainiv_ctx *ctx = FUNC3(geniv);
	struct ablkcipher_request *subreq = FUNC8(req);
	unsigned int ivsize;
	int err;

	FUNC2(subreq, FUNC7(geniv));
	FUNC0(subreq, req->creq.base.flags &
						~CRYPTO_TFM_REQ_MAY_SLEEP,
					req->creq.base.complete,
					req->creq.base.data);
	FUNC1(subreq, req->creq.src, req->creq.dst,
				     req->creq.nbytes, req->creq.info);

	FUNC10(&ctx->lock);

	ivsize = FUNC5(geniv);

	FUNC6(req->giv, ctx->iv, ivsize);
	FUNC6(subreq->info, ctx->iv, ivsize);

	err = FUNC4(subreq);
	if (err)
		goto unlock;

	FUNC6(ctx->iv, subreq->info, ivsize);

unlock:
	FUNC11(&ctx->lock);

	return err;
}