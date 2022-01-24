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
struct mv_req_ctx {int decrypt; int /*<<< orphan*/  op; } ;
struct mv_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  COP_AES_CBC ; 
 struct mv_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_ctx*) ; 
 struct mv_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ablkcipher_request*) ; 

__attribute__((used)) static int FUNC4(struct ablkcipher_request *req)
{
	struct mv_ctx *ctx = FUNC2(req->base.tfm);
	struct mv_req_ctx *req_ctx = FUNC0(req);

	req_ctx->op = COP_AES_CBC;
	req_ctx->decrypt = 1;

	FUNC1(ctx);
	return FUNC3(req);
}