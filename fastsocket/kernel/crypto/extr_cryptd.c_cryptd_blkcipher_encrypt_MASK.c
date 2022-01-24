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
struct crypto_blkcipher {int dummy; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;
struct TYPE_2__ {int /*<<< orphan*/  encrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct crypto_blkcipher*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct crypto_blkcipher*) ; 
 struct cryptd_blkcipher_ctx* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypto_async_request *req, int err)
{
	struct cryptd_blkcipher_ctx *ctx = FUNC3(req->tfm);
	struct crypto_blkcipher *child = ctx->child;

	FUNC1(FUNC0(req), child, err,
			       FUNC2(child)->encrypt);
}