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
typedef  int u8 ;
struct scatterlist {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int* odata; struct scatterlist* src; int /*<<< orphan*/  flags; struct scatterlist* dst; struct ablkcipher_request abreq; } ;
struct crypto_ccm_ctx {int /*<<< orphan*/  ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; int* iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_aead*) ; 
 struct crypto_ccm_ctx* FUNC6 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC7 (struct aead_request*) ; 
 int FUNC8 (struct aead_request*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC9 (int*) ; 
 int /*<<< orphan*/  crypto_ccm_encrypt_done ; 
 struct crypto_ccm_req_priv_ctx* FUNC10 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct scatterlist*,int*,int) ; 

__attribute__((used)) static int FUNC16(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC7(req);
	struct crypto_ccm_ctx *ctx = FUNC6(aead);
	struct crypto_ccm_req_priv_ctx *pctx = FUNC10(req);
	struct ablkcipher_request *abreq = &pctx->abreq;
	struct scatterlist *dst;
	unsigned int cryptlen = req->cryptlen;
	u8 *odata = pctx->odata;
	u8 *iv = req->iv;
	int err;

	err = FUNC9(iv);
	if (err)
		return err;

	pctx->flags = FUNC3(req);

	err = FUNC8(req, req->src, cryptlen);
	if (err)
		return err;

	 /* Note: rfc 3610 and NIST 800-38C require counter of
	 * zero to encrypt auth tag.
	 */
	FUNC11(iv + 15 - iv[0], 0, iv[0] + 1);

	FUNC14(pctx->src, 2);
	FUNC15(pctx->src, odata, 16);
	FUNC13(pctx->src, 2, req->src);

	dst = pctx->src;
	if (req->src != req->dst) {
		FUNC14(pctx->dst, 2);
		FUNC15(pctx->dst, odata, 16);
		FUNC13(pctx->dst, 2, req->dst);
		dst = pctx->dst;
	}

	FUNC2(abreq, ctx->ctr);
	FUNC0(abreq, pctx->flags,
					crypto_ccm_encrypt_done, req);
	FUNC1(abreq, pctx->src, dst, cryptlen + 16, iv);
	err = FUNC4(abreq);
	if (err)
		return err;

	/* copy authtag to end of dst */
	FUNC12(odata, req->dst, cryptlen,
				 FUNC5(aead), 1);
	return err;
}