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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  flags; void* data; int /*<<< orphan*/  complete; } ;
struct TYPE_4__ {int /*<<< orphan*/ * info; scalar_t__ nbytes; TYPE_1__ base; struct scatterlist* dst; struct scatterlist* src; } ;
struct skcipher_givcrypt_request {int /*<<< orphan*/ * giv; int /*<<< orphan*/  seq; TYPE_2__ creq; } ;
struct scatterlist {int offset; } ;
struct page {int dummy; } ;
struct eseqiv_request_ctx {struct scatterlist* src; struct scatterlist* dst; scalar_t__ tail; } ;
struct eseqiv_ctx {int /*<<< orphan*/ * salt; scalar_t__ reqoff; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct crypto_ablkcipher*) ; 
 struct eseqiv_ctx* FUNC7 (struct crypto_ablkcipher*) ; 
 int FUNC8 (struct ablkcipher_request*) ; 
 unsigned int FUNC9 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  eseqiv_complete ; 
 int /*<<< orphan*/  FUNC10 (struct skcipher_givcrypt_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct scatterlist*,int) ; 
 struct page* FUNC16 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC17 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct crypto_ablkcipher*) ; 
 struct eseqiv_request_ctx* FUNC19 (struct skcipher_givcrypt_request*) ; 
 struct crypto_ablkcipher* FUNC20 (struct skcipher_givcrypt_request*) ; 

__attribute__((used)) static int FUNC21(struct skcipher_givcrypt_request *req)
{
	struct crypto_ablkcipher *geniv = FUNC20(req);
	struct eseqiv_ctx *ctx = FUNC7(geniv);
	struct eseqiv_request_ctx *reqctx = FUNC19(req);
	struct ablkcipher_request *subreq;
	crypto_completion_t complete;
	void *data;
	struct scatterlist *osrc, *odst;
	struct scatterlist *dst;
	struct page *srcp;
	struct page *dstp;
	u8 *giv;
	u8 *vsrc;
	u8 *vdst;
	__be64 seq;
	unsigned int ivsize;
	unsigned int len;
	int err;

	subreq = (void *)(reqctx->tail + ctx->reqoff);
	FUNC4(subreq, FUNC18(geniv));

	giv = req->giv;
	complete = req->creq.base.complete;
	data = req->creq.base.data;

	osrc = req->creq.src;
	odst = req->creq.dst;
	srcp = FUNC16(osrc);
	dstp = FUNC16(odst);
	vsrc = FUNC1(srcp) ? NULL : FUNC13(srcp) + osrc->offset;
	vdst = FUNC1(dstp) ? NULL : FUNC13(dstp) + odst->offset;

	ivsize = FUNC9(geniv);

	if (vsrc != giv + ivsize && vdst != giv + ivsize) {
		giv = FUNC0((u8 *)reqctx->tail,
				FUNC6(geniv) + 1);
		complete = eseqiv_complete;
		data = req;
	}

	FUNC2(subreq, req->creq.base.flags, complete,
					data);

	FUNC15(reqctx->src, 2);
	FUNC17(reqctx->src, giv, ivsize);
	FUNC14(reqctx->src, osrc, vsrc == giv + ivsize, 2);

	dst = reqctx->src;
	if (osrc != odst) {
		FUNC15(reqctx->dst, 2);
		FUNC17(reqctx->dst, giv, ivsize);
		FUNC14(reqctx->dst, odst, vdst == giv + ivsize, 2);

		dst = reqctx->dst;
	}

	FUNC3(subreq, reqctx->src, dst,
				     req->creq.nbytes + ivsize,
				     req->creq.info);

	FUNC11(req->creq.info, ctx->salt, ivsize);

	len = ivsize;
	if (ivsize > sizeof(u64)) {
		FUNC12(req->giv, 0, ivsize - sizeof(u64));
		len = sizeof(u64);
	}
	seq = FUNC5(req->seq);
	FUNC11(req->giv + ivsize - len, &seq, len);

	err = FUNC8(subreq);
	if (err)
		goto out;

	if (giv != req->giv)
		FUNC10(req);

out:
	return err;
}