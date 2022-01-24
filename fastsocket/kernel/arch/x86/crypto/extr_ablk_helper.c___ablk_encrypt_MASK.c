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
struct blkcipher_desc {int /*<<< orphan*/  tfm; scalar_t__ flags; int /*<<< orphan*/  info; } ;
struct async_helper_ctx {int /*<<< orphan*/  cryptd_tfm; } ;
struct ablkcipher_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  info; } ;
struct TYPE_2__ {int (* encrypt ) (struct blkcipher_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct async_helper_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (struct ablkcipher_request*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct blkcipher_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC2(req);
	struct async_helper_ctx *ctx = FUNC1(tfm);
	struct blkcipher_desc desc;

	desc.tfm = FUNC0(ctx->cryptd_tfm);
	desc.info = req->info;
	desc.flags = 0;

	return FUNC3(desc.tfm)->encrypt(
		&desc, req->dst, req->src, req->nbytes);
}