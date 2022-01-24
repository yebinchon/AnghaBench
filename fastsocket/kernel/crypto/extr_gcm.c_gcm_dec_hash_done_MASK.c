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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  cryptlen; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {struct ablkcipher_request abreq; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ablkcipher_request*,struct aead_request*,int /*<<< orphan*/ ) ; 
 struct crypto_gcm_req_priv_ctx* FUNC5 (struct aead_request*) ; 
 int FUNC6 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int /*<<< orphan*/  gcm_decrypt_done ; 

__attribute__((used)) static void FUNC7(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC5(req);
	struct ablkcipher_request *abreq = &pctx->u.abreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

	if (!err) {
		FUNC0(abreq, FUNC2(req),
						gcm_decrypt_done, req);
		FUNC4(abreq, req, gctx->cryptlen);
		err = FUNC3(abreq);
		if (err == -EINPROGRESS || err == -EBUSY)
			return;
		else if (!err)
			err = FUNC6(req, pctx);
	}

	FUNC1(req, err);
}