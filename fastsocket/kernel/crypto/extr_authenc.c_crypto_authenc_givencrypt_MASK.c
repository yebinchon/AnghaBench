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
struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct aead_givcrypt_request {int /*<<< orphan*/  seq; int /*<<< orphan*/ * giv; struct aead_request areq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 struct crypto_aead* FUNC0 (struct aead_givcrypt_request*) ; 
 struct skcipher_givcrypt_request* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 struct crypto_authenc_ctx* FUNC3 (struct crypto_aead*) ; 
 int FUNC4 (struct aead_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_authenc_givencrypt_done ; 
 int FUNC5 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct skcipher_givcrypt_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_givcrypt_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_givcrypt_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct skcipher_givcrypt_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct aead_givcrypt_request *req)
{
	struct crypto_aead *authenc = FUNC0(req);
	struct crypto_authenc_ctx *ctx = FUNC3(authenc);
	struct aead_request *areq = &req->areq;
	struct skcipher_givcrypt_request *greq = FUNC1(areq);
	u8 *iv = req->giv;
	int err;

	FUNC9(greq, ctx->enc);
	FUNC6(greq, FUNC2(areq),
				       crypto_authenc_givencrypt_done, areq);
	FUNC7(greq, areq->src, areq->dst, areq->cryptlen,
				    areq->iv);
	FUNC8(greq, iv, req->seq);

	err = FUNC5(greq);
	if (err)
		return err;

	return FUNC4(areq, iv, CRYPTO_TFM_REQ_MAY_SLEEP);
}