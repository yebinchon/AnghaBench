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
struct crypto_gcm_ghash_ctx {scalar_t__ cryptlen; int /*<<< orphan*/  src; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  gcm_hash_crypt_done ; 
 int /*<<< orphan*/  gcm_hash_crypt_remain_done ; 
 int FUNC3 (struct aead_request*,struct crypto_gcm_req_priv_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC2(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	crypto_completion_t complete;
	unsigned int remain = 0;

	if (!err && gctx->cryptlen) {
		remain = FUNC4(gctx->cryptlen);
		complete = remain ? gcm_hash_crypt_done :
			gcm_hash_crypt_remain_done;
		err = FUNC3(req, pctx, complete,
				      gctx->src, gctx->cryptlen);
		if (err == -EINPROGRESS || err == -EBUSY)
			return;
	}

	if (remain)
		FUNC0(req, err);
	else
		FUNC1(req, err);
}