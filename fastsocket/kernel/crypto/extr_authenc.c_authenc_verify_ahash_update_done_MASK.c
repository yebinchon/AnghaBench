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
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; scalar_t__ reqoff; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  sg; int /*<<< orphan*/  complete; scalar_t__ tail; } ;
struct ahash_request {int /*<<< orphan*/ * result; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aead_request*,int) ; 
 int FUNC8 (struct ablkcipher_request*) ; 
 unsigned int FUNC9 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC10 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC11 (struct aead_request*) ; 
 int FUNC12 (struct ahash_request*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct crypto_async_request *areq,
					     int err)
{
	u8 *ihash;
	unsigned int authsize;
	struct ablkcipher_request *abreq;
	struct aead_request *req = areq->data;
	struct crypto_aead *authenc = FUNC11(req);
	struct crypto_authenc_ctx *ctx = FUNC10(authenc);
	struct authenc_request_ctx *areq_ctx = FUNC3(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

	if (err)
		goto out;

	FUNC6(ahreq, areq_ctx->sg, ahreq->result,
				areq_ctx->cryptlen);
	FUNC5(ahreq, FUNC4(req) &
					  CRYPTO_TFM_REQ_MAY_SLEEP,
				   areq_ctx->complete, req);

	err = FUNC12(ahreq);
	if (err)
		goto out;

	authsize = FUNC9(authenc);
	ihash = ahreq->result + authsize;
	FUNC14(ihash, areq_ctx->sg, areq_ctx->cryptlen,
				 authsize, 0);

	err = FUNC13(ihash, ahreq->result, authsize) ? -EBADMSG: 0;
	if (err)
		goto out;

	abreq = FUNC3(req);
	FUNC2(abreq, ctx->enc);
	FUNC0(abreq, FUNC4(req),
					req->base.complete, req->base.data);
	FUNC1(abreq, req->src, req->dst,
				     req->cryptlen, req->iv);

	err = FUNC8(abreq);

out:
	FUNC7(req, err);
}