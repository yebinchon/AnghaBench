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
struct crypto_gcm_ghash_ctx {int /*<<< orphan*/  (* complete ) (struct aead_request*,int) ;} ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  iauth_tag; int /*<<< orphan*/  auth_tag; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 struct crypto_gcm_req_priv_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int) ; 

__attribute__((used)) static void FUNC3(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC0(req);
	struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

	if (!err)
		FUNC1(pctx->auth_tag, pctx->iauth_tag, 16);

	gctx->complete(req, err);
}