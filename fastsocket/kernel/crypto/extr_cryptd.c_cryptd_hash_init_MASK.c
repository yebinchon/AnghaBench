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
struct shash_desc {int /*<<< orphan*/  flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct cryptd_hash_request_ctx {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;struct shash_desc desc; } ;
struct cryptd_hash_ctx {struct crypto_shash* child; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EINPROGRESS ; 
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct cryptd_hash_request_ctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct shash_desc*) ; 
 struct cryptd_hash_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct crypto_async_request *req_async, int err)
{
	struct cryptd_hash_ctx *ctx = FUNC3(req_async->tfm);
	struct crypto_shash *child = ctx->child;
	struct ahash_request *req = FUNC0(req_async);
	struct cryptd_hash_request_ctx *rctx = FUNC1(req);
	struct shash_desc *desc = &rctx->desc;

	if (FUNC7(err == -EINPROGRESS))
		goto out;

	desc->tfm = child;
	desc->flags = CRYPTO_TFM_REQ_MAY_SLEEP;

	err = FUNC2(desc);

	req->base.complete = rctx->complete;

out:
	FUNC4();
	rctx->complete(&req->base, err);
	FUNC5();
}