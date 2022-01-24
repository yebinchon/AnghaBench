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
struct scatterlist {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_req_priv_ctx {scalar_t__ ilen; int /*<<< orphan*/ * idata; int /*<<< orphan*/ * odata; } ;
struct crypto_ccm_ctx {struct crypto_cipher* cipher; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int assoclen; struct scatterlist* assoc; } ;

/* Variables and functions */
 struct crypto_ccm_ctx* FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 struct crypto_ccm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct aead_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_cipher*,struct crypto_ccm_req_priv_ctx*,struct scatterlist*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct aead_request *req, struct scatterlist *plain,
			   unsigned int cryptlen)
{
	struct crypto_aead *aead = FUNC1(req);
	struct crypto_ccm_ctx *ctx = FUNC0(aead);
	struct crypto_ccm_req_priv_ctx *pctx = FUNC2(req);
	struct crypto_cipher *cipher = ctx->cipher;
	unsigned int assoclen = req->assoclen;
	u8 *odata = pctx->odata;
	u8 *idata = pctx->idata;
	int err;

	/* format control data for input */
	err = FUNC5(odata, req, cryptlen);
	if (err)
		goto out;

	/* encrypt first block to use as start in computing mac  */
	FUNC3(cipher, odata, odata);

	/* format associated data and compute into mac */
	if (assoclen) {
		pctx->ilen = FUNC4(idata, assoclen);
		FUNC6(cipher, pctx, req->assoc, req->assoclen);
	} else {
		pctx->ilen = 0;
	}

	/* compute plaintext into mac */
	FUNC6(cipher, pctx, plain, cryptlen);

out:
	return err;
}