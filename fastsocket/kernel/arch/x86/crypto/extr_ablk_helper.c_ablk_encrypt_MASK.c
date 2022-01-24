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
struct crypto_ablkcipher {int dummy; } ;
struct async_helper_ctx {TYPE_1__* cryptd_tfm; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (struct ablkcipher_request*) ; 
 struct ablkcipher_request* FUNC1 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ *) ; 
 struct async_helper_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 int FUNC4 (struct ablkcipher_request*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ablkcipher_request*,struct ablkcipher_request*,int) ; 

int FUNC8(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC5(req);
	struct async_helper_ctx *ctx = FUNC3(tfm);

	if (!FUNC6()) {
		struct ablkcipher_request *cryptd_req =
			FUNC1(req);

		FUNC7(cryptd_req, req, sizeof(*req));
		FUNC2(cryptd_req, &ctx->cryptd_tfm->base);

		return FUNC4(cryptd_req);
	} else {
		return FUNC0(req);
	}
}