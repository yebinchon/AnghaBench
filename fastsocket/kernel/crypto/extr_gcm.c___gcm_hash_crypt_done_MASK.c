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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  cryptlen; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  gcm_hash_crypt_remain_done ; 
 int FUNC3 (struct aead_request*,struct crypto_gcm_req_priv_ctx*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC2(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	unsigned int remain;

	if (!err) {
		remain = FUNC4(gctx->cryptlen);
		FUNC0(!remain);
		err = FUNC3(req, pctx, remain,
				      gcm_hash_crypt_remain_done);
		if (err == -EINPROGRESS || err == -EBUSY)
			return;
	}

	FUNC1(req, err);
}