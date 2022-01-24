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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  info; } ;
struct crypto_rfc3686_req_ctx {int /*<<< orphan*/ * iv; struct ablkcipher_request subreq; } ;
struct crypto_rfc3686_ctx {int /*<<< orphan*/  nonce; struct crypto_ablkcipher* child; } ;
struct crypto_ablkcipher {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ablkcipher_request*,struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned long FUNC6 (struct crypto_ablkcipher*) ; 
 struct crypto_rfc3686_ctx* FUNC7 (struct crypto_ablkcipher*) ; 
 int FUNC8 (struct ablkcipher_request*) ; 
 struct crypto_ablkcipher* FUNC9 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC9(req);
	struct crypto_rfc3686_ctx *ctx = FUNC7(tfm);
	struct crypto_ablkcipher *child = ctx->child;
	unsigned long align = FUNC6(tfm);
	struct crypto_rfc3686_req_ctx *rctx =
		(void *)FUNC0((u8 *)FUNC1(req), align + 1);
	struct ablkcipher_request *subreq = &rctx->subreq;
	u8 *iv = rctx->iv;

	/* set up counter block */
	FUNC10(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
	FUNC10(iv + CTR_RFC3686_NONCE_SIZE, req->info, CTR_RFC3686_IV_SIZE);

	/* initialize counter portion of counter block */
	*(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
		FUNC5(1);

	FUNC4(subreq, child);
	FUNC2(subreq, req->base.flags,
					req->base.complete, req->base.data);
	FUNC3(subreq, req->src, req->dst, req->nbytes,
				     iv);

	return FUNC8(subreq);
}