#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int offset; int /*<<< orphan*/  length; } ;
struct page {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {unsigned int cryptlen; struct scatterlist* sg; struct scatterlist* asg; struct scatterlist* cipher; } ;
struct aead_request {scalar_t__ assoclen; struct scatterlist* assoc; struct scatterlist* src; } ;
typedef  int /*<<< orphan*/  authenc_ahash_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 struct authenc_request_ctx* FUNC1 (struct aead_request*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  crypto_authenc_ahash ; 
 int /*<<< orphan*/  crypto_authenc_ahash_fb ; 
 int FUNC4 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*,int) ; 
 scalar_t__ FUNC8 (struct scatterlist*) ; 
 struct page* FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct aead_request *req, u8 *iv,
				  unsigned int cryptlen)
{
	struct crypto_aead *authenc = FUNC3(req);
	struct authenc_request_ctx *areq_ctx = FUNC1(req);
	struct scatterlist *src = req->src;
	struct scatterlist *assoc = req->assoc;
	struct scatterlist *cipher = areq_ctx->cipher;
	struct scatterlist *asg = areq_ctx->asg;
	unsigned int ivsize = FUNC2(authenc);
	authenc_ahash_t authenc_ahash_fn = crypto_authenc_ahash_fb;
	struct page *srcp;
	u8 *vsrc;

	srcp = FUNC9(src);
	vsrc = FUNC0(srcp) ? NULL : FUNC5(srcp) + src->offset;

	if (ivsize) {
		FUNC7(cipher, 2);
		FUNC10(cipher, iv, ivsize);
		FUNC6(cipher, src, vsrc == iv + ivsize, 2);
		src = cipher;
		cryptlen += ivsize;
	}

	if (FUNC8(assoc)) {
		authenc_ahash_fn = crypto_authenc_ahash;
		FUNC7(asg, 2);
		FUNC11(asg, FUNC9(assoc), assoc->length, assoc->offset);
		FUNC6(asg, src, 0, 2);
		src = asg;
		cryptlen += req->assoclen;
	}

	areq_ctx->cryptlen = cryptlen;
	areq_ctx->sg = src;

	return FUNC4(req, authenc_ahash_fn);
}