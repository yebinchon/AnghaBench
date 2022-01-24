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
struct crypto_authenc_ctx {scalar_t__ reqoff; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  sg; int /*<<< orphan*/  complete; scalar_t__ tail; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 struct authenc_request_ctx* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC6 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC7 (struct aead_request*) ; 
 int FUNC8 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct crypto_async_request *areq,
					    int err)
{
	struct aead_request *req = areq->data;
	struct crypto_aead *authenc = FUNC7(req);
	struct crypto_authenc_ctx *ctx = FUNC6(authenc);
	struct authenc_request_ctx *areq_ctx = FUNC0(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

	if (err)
		goto out;

	FUNC3(ahreq, areq_ctx->sg, ahreq->result,
				areq_ctx->cryptlen);
	FUNC2(ahreq, FUNC1(req) &
					  CRYPTO_TFM_REQ_MAY_SLEEP,
				   areq_ctx->complete, req);

	err = FUNC8(ahreq);
	if (err)
		goto out;

	FUNC9(ahreq->result, areq_ctx->sg,
				 areq_ctx->cryptlen,
				 FUNC5(authenc), 1);

out:
	FUNC4(req, err);
}