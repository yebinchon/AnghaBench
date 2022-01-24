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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int offset; int /*<<< orphan*/  length; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; TYPE_1__ base; struct scatterlist* assoc; int /*<<< orphan*/ * iv; struct scatterlist* dst; } ;
struct crypto_rfc4543_req_ctx {int /*<<< orphan*/  auth_tag; struct scatterlist* assoc; struct scatterlist* payload; struct scatterlist* cipher; struct aead_request subreq; } ;
struct crypto_rfc4543_ctx {int /*<<< orphan*/  child; int /*<<< orphan*/ * nonce; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aead_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct crypto_aead*) ; 
 struct crypto_rfc4543_ctx* FUNC8 (struct crypto_aead*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct crypto_aead* FUNC10 (struct aead_request*) ; 
 struct crypto_rfc4543_req_ctx* FUNC11 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct scatterlist*,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct scatterlist*,int) ; 
 struct page* FUNC19 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC20 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct aead_request *FUNC22(struct aead_request *req,
						 int enc)
{
	struct crypto_aead *aead = FUNC10(req);
	struct crypto_rfc4543_ctx *ctx = FUNC8(aead);
	struct crypto_rfc4543_req_ctx *rctx = FUNC11(req);
	struct aead_request *subreq = &rctx->subreq;
	struct scatterlist *dst = req->dst;
	struct scatterlist *cipher = rctx->cipher;
	struct scatterlist *payload = rctx->payload;
	struct scatterlist *assoc = rctx->assoc;
	unsigned int authsize = FUNC7(aead);
	unsigned int assoclen = req->assoclen;
	struct page *dstp;
	u8 *vdst;
	u8 *iv = FUNC0((u8 *)(rctx + 1) + FUNC9(ctx->child),
			   FUNC6(ctx->child) + 1);

	FUNC12(iv, ctx->nonce, 4);
	FUNC12(iv + 4, req->iv, 8);

	/* construct cipher/plaintext */
	if (enc)
		FUNC13(rctx->auth_tag, 0, authsize);
	else
		FUNC16(rctx->auth_tag, dst,
					 req->cryptlen - authsize,
					 authsize, 0);

	FUNC17(cipher, rctx->auth_tag, authsize);

	/* construct the aad */
	dstp = FUNC19(dst);
	vdst = FUNC1(dstp) ? NULL : FUNC14(dstp) + dst->offset;

	FUNC18(payload, 2);
	FUNC20(payload, req->iv, 8);
	FUNC15(payload, dst, vdst == req->iv + 8, 2);
	assoclen += 8 + req->cryptlen - (enc ? 0 : authsize);

	FUNC18(assoc, 2);
	FUNC21(assoc, FUNC19(req->assoc), req->assoc->length,
		    req->assoc->offset);
	FUNC15(assoc, payload, 0, 2);

	FUNC5(subreq, ctx->child);
	FUNC3(subreq, req->base.flags, req->base.complete,
				  req->base.data);
	FUNC4(subreq, cipher, cipher, enc ? 0 : authsize, iv);
	FUNC2(subreq, assoc, assoclen);

	return subreq;
}