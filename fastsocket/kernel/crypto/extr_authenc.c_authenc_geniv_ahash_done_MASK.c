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
struct authenc_request_ctx {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  sg; scalar_t__ tail; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 struct authenc_request_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct crypto_async_request *areq, int err)
{
	struct aead_request *req = areq->data;
	struct crypto_aead *authenc = FUNC4(req);
	struct crypto_authenc_ctx *ctx = FUNC3(authenc);
	struct authenc_request_ctx *areq_ctx = FUNC1(req);
	struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

	if (err)
		goto out;

	FUNC5(ahreq->result, areq_ctx->sg,
				 areq_ctx->cryptlen,
				 FUNC2(authenc), 1);

out:
	FUNC0(req, err);
}