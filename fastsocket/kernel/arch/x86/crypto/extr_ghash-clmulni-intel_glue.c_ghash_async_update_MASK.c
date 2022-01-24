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
struct shash_desc {int dummy; } ;
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_ahash {int /*<<< orphan*/  base; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct ahash_request* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ *) ; 
 struct shash_desc* FUNC2 (struct ahash_request*) ; 
 struct ghash_async_ctx* FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ahash_request*,struct ahash_request*,int) ; 
 int FUNC8 (struct ahash_request*,struct shash_desc*) ; 

__attribute__((used)) static int FUNC9(struct ahash_request *req)
{
	struct ahash_request *cryptd_req = FUNC0(req);

	if (!FUNC6()) {
		struct crypto_ahash *tfm = FUNC4(req);
		struct ghash_async_ctx *ctx = FUNC3(tfm);
		struct cryptd_ahash *cryptd_tfm = ctx->cryptd_tfm;

		FUNC7(cryptd_req, req, sizeof(*req));
		FUNC1(cryptd_req, &cryptd_tfm->base);
		return FUNC5(cryptd_req);
	} else {
		struct shash_desc *desc = FUNC2(cryptd_req);
		return FUNC8(req, desc);
	}
}