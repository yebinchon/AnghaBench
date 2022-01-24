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
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_ahash {int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ *) ; 
 struct crypto_shash* FUNC2 (struct cryptd_ahash*) ; 
 struct shash_desc* FUNC3 (struct ahash_request*) ; 
 struct ghash_async_ctx* FUNC4 (struct crypto_ahash*) ; 
 int FUNC5 (struct ahash_request*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ahash_request*,struct ahash_request*,int) ; 
 int FUNC9 (struct ahash_request*,struct shash_desc*) ; 

__attribute__((used)) static int FUNC10(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC6(req);
	struct ghash_async_ctx *ctx = FUNC4(tfm);
	struct ahash_request *cryptd_req = FUNC0(req);
	struct cryptd_ahash *cryptd_tfm = ctx->cryptd_tfm;

	if (!FUNC7()) {
		FUNC8(cryptd_req, req, sizeof(*req));
		FUNC1(cryptd_req, &cryptd_tfm->base);
		return FUNC5(cryptd_req);
	} else {
		struct shash_desc *desc = FUNC3(cryptd_req);
		struct crypto_shash *child = FUNC2(cryptd_tfm);

		desc->tfm = child;
		desc->flags = req->base.flags;
		return FUNC9(req, desc);
	}
}