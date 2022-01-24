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
struct talitos_edesc {int dummy; } ;
struct talitos_ctx {int /*<<< orphan*/  authsize; int /*<<< orphan*/  dev; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct aead_request {TYPE_1__ base; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct talitos_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 struct talitos_edesc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct talitos_edesc *FUNC3(struct aead_request *areq,
					      int icv_stashing)
{
	struct crypto_aead *authenc = FUNC1(areq);
	struct talitos_ctx *ctx = FUNC0(authenc);

	return FUNC2(ctx->dev, areq->src, areq->dst,
				   areq->cryptlen, ctx->authsize, icv_stashing,
				   areq->base.flags);
}