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
struct crypto_authenc_ctx {int reqoff; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int /*<<< orphan*/  complete; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  sg; int /*<<< orphan*/ * tail; } ;
struct ahash_request {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 struct authenc_request_ctx* FUNC2 (struct aead_request*) ; 
 unsigned int FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*,unsigned int,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*,struct crypto_ahash*) ; 
 struct crypto_authenc_ctx* FUNC7 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC8 (struct aead_request*) ; 
 scalar_t__ FUNC9 (struct crypto_ahash*) ; 
 int FUNC10 (struct ahash_request*) ; 

__attribute__((used)) static u8 *FUNC11(struct aead_request *req, unsigned int flags)
{
	struct crypto_aead *authenc = FUNC8(req);
	struct crypto_authenc_ctx *ctx = FUNC7(authenc);
	struct crypto_ahash *auth = ctx->auth;
	struct authenc_request_ctx *areq_ctx = FUNC2(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);
	u8 *hash = areq_ctx->tail;
	int err;

	hash = (u8 *)FUNC0((unsigned long)hash + FUNC9(auth),
			   FUNC9(auth) + 1);

	FUNC6(ahreq, auth);
	FUNC5(ahreq, areq_ctx->sg, hash,
				areq_ctx->cryptlen);
	FUNC4(ahreq, FUNC3(req) & flags,
				   areq_ctx->complete, req);

	err = FUNC10(ahreq);
	if (err)
		return FUNC1(err);

	return hash;
}