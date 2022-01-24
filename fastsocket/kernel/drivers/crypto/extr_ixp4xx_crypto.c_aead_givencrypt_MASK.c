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
typedef  int /*<<< orphan*/  u64 ;
struct ixp_ctx {int salted; int /*<<< orphan*/ * salt; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {scalar_t__ cryptlen; int /*<<< orphan*/  assoclen; scalar_t__ iv; } ;
struct aead_givcrypt_request {int /*<<< orphan*/  giv; TYPE_1__ areq; int /*<<< orphan*/  seq; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 struct crypto_aead* FUNC0 (struct aead_givcrypt_request*) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ixp_ctx* FUNC3 (struct crypto_aead*) ; 
 unsigned int FUNC4 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct aead_givcrypt_request *req)
{
	struct crypto_aead *tfm = FUNC0(req);
	struct ixp_ctx *ctx = FUNC3(tfm);
	unsigned len, ivsize = FUNC4(tfm);
	__be64 seq;

	/* copied from eseqiv.c */
	if (!ctx->salted) {
		FUNC5(ctx->salt, ivsize);
		ctx->salted = 1;
	}
	FUNC6(req->areq.iv, ctx->salt, ivsize);
	len = ivsize;
	if (ivsize > sizeof(u64)) {
		FUNC7(req->giv, 0, ivsize - sizeof(u64));
		len = sizeof(u64);
	}
	seq = FUNC2(req->seq);
	FUNC6(req->giv + ivsize - len, &seq, len);
	return FUNC1(&req->areq, 1, req->areq.assoclen,
			req->areq.cryptlen +ivsize, req->giv);
}