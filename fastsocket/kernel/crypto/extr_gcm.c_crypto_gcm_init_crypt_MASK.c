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
struct scatterlist {int dummy; } ;
struct crypto_gcm_req_priv_ctx {struct scatterlist* src; struct scatterlist* dst; int /*<<< orphan*/  auth_tag; } ;
struct crypto_gcm_ctx {int /*<<< orphan*/  ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct ablkcipher_request {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct crypto_gcm_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 struct crypto_gcm_req_priv_ctx* FUNC5 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct ablkcipher_request *ablk_req,
				  struct aead_request *req,
				  unsigned int cryptlen)
{
	struct crypto_aead *aead = FUNC4(req);
	struct crypto_gcm_ctx *ctx = FUNC3(aead);
	struct crypto_gcm_req_priv_ctx *pctx = FUNC5(req);
	struct scatterlist *dst;
	__be32 counter = FUNC2(1);

	FUNC7(pctx->auth_tag, 0, sizeof(pctx->auth_tag));
	FUNC6(req->iv + 12, &counter, 4);

	FUNC9(pctx->src, 2);
	FUNC10(pctx->src, pctx->auth_tag, sizeof(pctx->auth_tag));
	FUNC8(pctx->src, 2, req->src);

	dst = pctx->src;
	if (req->src != req->dst) {
		FUNC9(pctx->dst, 2);
		FUNC10(pctx->dst, pctx->auth_tag, sizeof(pctx->auth_tag));
		FUNC8(pctx->dst, 2, req->dst);
		dst = pctx->dst;
	}

	FUNC1(ablk_req, ctx->ctr);
	FUNC0(ablk_req, pctx->src, dst,
				     cryptlen + sizeof(pctx->auth_tag),
				     req->iv);
}