#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct skcipher_givcrypt_request {TYPE_2__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct async_chainiv_ctx {int /*<<< orphan*/  state; TYPE_3__ queue; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAINIV_STATE_INUSE ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct skcipher_givcrypt_request*) ; 
 int FUNC4 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct async_chainiv_ctx* FUNC6 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ablkcipher*) ; 
 struct ablkcipher_request* FUNC8 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC9 (struct skcipher_givcrypt_request*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC9(req);
	struct async_chainiv_ctx *ctx = FUNC6(geniv);
	struct ablkcipher_request *subreq = FUNC8(req);

	FUNC2(subreq, FUNC7(geniv));
	FUNC0(subreq, req->creq.base.flags,
					req->creq.base.complete,
					req->creq.base.data);
	FUNC1(subreq, req->creq.src, req->creq.dst,
				     req->creq.nbytes, req->creq.info);

	if (FUNC10(CHAINIV_STATE_INUSE, &ctx->state))
		goto postpone;

	if (ctx->queue.qlen) {
		FUNC5(CHAINIV_STATE_INUSE, &ctx->state);
		goto postpone;
	}

	return FUNC3(req);

postpone:
	return FUNC4(req);
}