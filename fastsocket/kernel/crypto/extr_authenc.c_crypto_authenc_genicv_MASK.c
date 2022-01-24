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
struct authenc_request_ctx {unsigned int cryptlen; int /*<<< orphan*/  update_complete; int /*<<< orphan*/  complete; struct scatterlist* sg; struct scatterlist* asg; struct scatterlist* cipher; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ assoclen; struct scatterlist* assoc; struct scatterlist* dst; } ;
typedef  int /*<<< orphan*/ * (* authenc_ahash_t ) (struct aead_request*,unsigned int) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct authenc_request_ctx* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  authenc_geniv_ahash_done ; 
 int /*<<< orphan*/  authenc_geniv_ahash_update_done ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*) ; 
 unsigned int FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/ * FUNC7 (struct aead_request*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (struct aead_request*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,int) ; 
 scalar_t__ FUNC13 (struct scatterlist*) ; 
 struct page* FUNC14 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC15 (struct scatterlist*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct scatterlist*,struct page*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct aead_request *req, u8 *iv,
				 unsigned int flags)
{
	struct crypto_aead *authenc = FUNC6(req);
	struct authenc_request_ctx *areq_ctx = FUNC3(req);
	struct scatterlist *dst = req->dst;
	struct scatterlist *assoc = req->assoc;
	struct scatterlist *cipher = areq_ctx->cipher;
	struct scatterlist *asg = areq_ctx->asg;
	unsigned int ivsize = FUNC5(authenc);
	unsigned int cryptlen = req->cryptlen;
	authenc_ahash_t authenc_ahash_fn = crypto_authenc_ahash_fb;
	struct page *dstp;
	u8 *vdst;
	u8 *hash;

	dstp = FUNC14(dst);
	vdst = FUNC2(dstp) ? NULL : FUNC9(dstp) + dst->offset;

	if (ivsize) {
		FUNC12(cipher, 2);
		FUNC15(cipher, iv, ivsize);
		FUNC10(cipher, dst, vdst == iv + ivsize, 2);
		dst = cipher;
		cryptlen += ivsize;
	}

	if (FUNC13(assoc)) {
		authenc_ahash_fn = crypto_authenc_ahash;
		FUNC12(asg, 2);
		FUNC16(asg, FUNC14(assoc), assoc->length, assoc->offset);
		FUNC10(asg, dst, 0, 2);
		dst = asg;
		cryptlen += req->assoclen;
	}

	areq_ctx->cryptlen = cryptlen;
	areq_ctx->sg = dst;

	areq_ctx->complete = authenc_geniv_ahash_done;
	areq_ctx->update_complete = authenc_geniv_ahash_update_done;

	hash = authenc_ahash_fn(req, flags);
	if (FUNC0(hash))
		return FUNC1(hash);

	FUNC11(hash, dst, cryptlen,
				 FUNC4(authenc), 1);
	return 0;
}