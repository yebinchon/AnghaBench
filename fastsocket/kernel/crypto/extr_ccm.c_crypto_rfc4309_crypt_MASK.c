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
typedef  int u8 ;
struct crypto_rfc4309_ctx {int /*<<< orphan*/  nonce; struct crypto_aead* child; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  assoc; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int* FUNC0 (int*,scalar_t__) ; 
 struct aead_request* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,struct crypto_aead*) ; 
 scalar_t__ FUNC6 (struct crypto_aead*) ; 
 struct crypto_rfc4309_ctx* FUNC7 (struct crypto_aead*) ; 
 int FUNC8 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct aead_request *FUNC11(struct aead_request *req)
{
	struct aead_request *subreq = FUNC1(req);
	struct crypto_aead *aead = FUNC9(req);
	struct crypto_rfc4309_ctx *ctx = FUNC7(aead);
	struct crypto_aead *child = ctx->child;
	u8 *iv = FUNC0((u8 *)(subreq + 1) + FUNC8(child),
			   FUNC6(child) + 1);

	/* L' */
	iv[0] = 3;

	FUNC10(iv + 1, ctx->nonce, 3);
	FUNC10(iv + 4, req->iv, 8);

	FUNC5(subreq, child);
	FUNC3(subreq, req->base.flags, req->base.complete,
				  req->base.data);
	FUNC4(subreq, req->src, req->dst, req->cryptlen, iv);
	FUNC2(subreq, req->assoc, req->assoclen);

	return subreq;
}