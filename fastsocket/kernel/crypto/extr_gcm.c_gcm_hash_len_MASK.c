#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* b; void* a; } ;
typedef  TYPE_2__ u128 ;
struct crypto_gcm_ghash_ctx {int cryptlen; } ;
struct ahash_request {int dummy; } ;
struct TYPE_4__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  src; int /*<<< orphan*/  iauth_tag; struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int assoclen; } ;
typedef  int /*<<< orphan*/  lengths ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  gcm_hash_len_done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req,
			struct crypto_gcm_req_priv_ctx *pctx)
{
	struct ahash_request *ahreq = &pctx->u.ahreq;
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
	u128 lengths;

	lengths.a = FUNC3(req->assoclen * 8);
	lengths.b = FUNC3(gctx->cryptlen * 8);
	FUNC5(pctx->iauth_tag, &lengths, 16);
	FUNC6(pctx->src, pctx->iauth_tag, 16);
	FUNC1(ahreq, FUNC0(req),
				   gcm_hash_len_done, req);
	FUNC2(ahreq, pctx->src,
				NULL, sizeof(lengths));

	return FUNC4(ahreq);
}