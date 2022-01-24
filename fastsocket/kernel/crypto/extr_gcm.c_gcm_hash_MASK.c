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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  src; } ;
struct ahash_request {int dummy; } ;
struct TYPE_3__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct crypto_gcm_ctx {int /*<<< orphan*/  ghash; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  assoc; TYPE_2__ base; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahash_request*) ; 
 struct crypto_gcm_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcm_hash_assoc_done ; 
 int /*<<< orphan*/  gcm_hash_assoc_remain_done ; 
 int /*<<< orphan*/  gcm_hash_crypt_done ; 
 int /*<<< orphan*/  gcm_hash_crypt_remain_done ; 
 int FUNC5 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int /*<<< orphan*/  gcm_hash_init_done ; 
 int FUNC6 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int FUNC7 (struct aead_request*,struct crypto_gcm_req_priv_ctx*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct aead_request*,struct crypto_gcm_req_priv_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req,
		    struct crypto_gcm_req_priv_ctx *pctx)
{
	struct ahash_request *ahreq = &pctx->u.ahreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	struct crypto_gcm_ctx *ctx = FUNC4(req->base.tfm);
	unsigned int remain;
	crypto_completion_t complete;
	int err;

	FUNC2(ahreq, ctx->ghash);

	FUNC1(ahreq, FUNC0(req),
				   gcm_hash_init_done, req);
	err = FUNC3(ahreq);
	if (err)
		return err;
	remain = FUNC9(req->assoclen);
	complete = remain ? gcm_hash_assoc_done : gcm_hash_assoc_remain_done;
	err = FUNC8(req, pctx, complete, req->assoc, req->assoclen);
	if (err)
		return err;
	if (remain) {
		err = FUNC7(req, pctx, remain,
				      gcm_hash_assoc_remain_done);
		if (err)
			return err;
	}
	remain = FUNC9(gctx->cryptlen);
	complete = remain ? gcm_hash_crypt_done : gcm_hash_crypt_remain_done;
	err = FUNC8(req, pctx, complete, gctx->src, gctx->cryptlen);
	if (err)
		return err;
	if (remain) {
		err = FUNC7(req, pctx, remain,
				      gcm_hash_crypt_remain_done);
		if (err)
			return err;
	}
	err = FUNC6(req, pctx);
	if (err)
		return err;
	err = FUNC5(req, pctx);
	if (err)
		return err;

	return 0;
}