#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_ablkcipher {int dummy; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; scalar_t__ flags; int /*<<< orphan*/  info; } ;
struct async_helper_ctx {TYPE_2__* cryptd_tfm; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  info; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_3__ {int (* decrypt ) (struct blkcipher_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ablkcipher_request* FUNC0 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct async_helper_ctx* FUNC3 (struct crypto_ablkcipher*) ; 
 int FUNC4 (struct ablkcipher_request*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct ablkcipher_request*,struct ablkcipher_request*,int) ; 
 int FUNC9 (struct blkcipher_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC5(req);
	struct async_helper_ctx *ctx = FUNC3(tfm);

	if (!FUNC7()) {
		struct ablkcipher_request *cryptd_req =
			FUNC0(req);

		FUNC8(cryptd_req, req, sizeof(*req));
		FUNC1(cryptd_req, &ctx->cryptd_tfm->base);

		return FUNC4(cryptd_req);
	} else {
		struct blkcipher_desc desc;

		desc.tfm = FUNC2(ctx->cryptd_tfm);
		desc.info = req->info;
		desc.flags = 0;

		return FUNC6(desc.tfm)->decrypt(
			&desc, req->dst, req->src, req->nbytes);
	}
}