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
struct crypto_gcm_ghash_ctx {unsigned int cryptlen; int /*<<< orphan*/  complete; int /*<<< orphan*/  src; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {struct ablkcipher_request abreq; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct ablkcipher_request*) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ablkcipher_request*,struct aead_request*,unsigned int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC6 (struct aead_request*) ; 
 int FUNC7 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int /*<<< orphan*/  gcm_dec_hash_done ; 
 int /*<<< orphan*/  gcm_decrypt_done ; 
 int FUNC8 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC4(req);
	struct crypto_gcm_req_priv_ctx *pctx = FUNC6(req);
	struct ablkcipher_request *abreq = &pctx->u.abreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	unsigned int authsize = FUNC3(aead);
	unsigned int cryptlen = req->cryptlen;
	int err;

	if (cryptlen < authsize)
		return -EINVAL;
	cryptlen -= authsize;

	gctx->src = req->src;
	gctx->cryptlen = cryptlen;
	gctx->complete = gcm_dec_hash_done;

	err = FUNC8(req, pctx);
	if (err)
		return err;

	FUNC0(abreq, FUNC1(req),
					gcm_decrypt_done, req);
	FUNC5(abreq, req, cryptlen);
	err = FUNC2(abreq);
	if (err)
		return err;

	return FUNC7(req, pctx);
}