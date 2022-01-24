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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  complete; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  src; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {struct ablkcipher_request abreq; } ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  iauth_tag; int /*<<< orphan*/  auth_tag; struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,struct aead_request*,int /*<<< orphan*/ ) ; 
 struct crypto_gcm_req_priv_ctx* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int /*<<< orphan*/  gcm_enc_hash_done ; 
 int /*<<< orphan*/  gcm_encrypt_done ; 
 int FUNC7 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 

__attribute__((used)) static int FUNC8(struct aead_request *req)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC4(req);
	struct ablkcipher_request *abreq = &pctx->u.abreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	int err;

	FUNC3(abreq, req, req->cryptlen);
	FUNC0(abreq, FUNC1(req),
					gcm_encrypt_done, req);

	gctx->src = req->dst;
	gctx->cryptlen = req->cryptlen;
	gctx->complete = gcm_enc_hash_done;

	err = FUNC2(abreq);
	if (err)
		return err;

	err = FUNC7(req, pctx);
	if (err)
		return err;

	FUNC5(pctx->auth_tag, pctx->iauth_tag, 16);
	FUNC6(req, pctx);

	return 0;
}