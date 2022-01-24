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
struct crypto_authenc_ctx {struct crypto_ablkcipher* enc; } ;
struct crypto_aead {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  iv; int /*<<< orphan*/  src; struct scatterlist* dst; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,struct scatterlist*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,struct crypto_ablkcipher*) ; 
 struct ablkcipher_request* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct ablkcipher_request*) ; 
 int FUNC6 (struct crypto_ablkcipher*) ; 
 struct crypto_authenc_ctx* FUNC7 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC9 (struct aead_request*) ; 
 int /*<<< orphan*/  crypto_authenc_encrypt_done ; 
 int FUNC10 (struct aead_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct aead_request *req)
{
	struct crypto_aead *authenc = FUNC9(req);
	struct crypto_authenc_ctx *ctx = FUNC7(authenc);
	struct ablkcipher_request *abreq = FUNC3(req);
	struct crypto_ablkcipher *enc = ctx->enc;
	struct scatterlist *dst = req->dst;
	unsigned int cryptlen = req->cryptlen;
	u8 *iv = (u8 *)(abreq + 1) + FUNC6(enc);
	int err;

	FUNC2(abreq, enc);
	FUNC0(abreq, FUNC4(req),
					crypto_authenc_encrypt_done, req);
	FUNC1(abreq, req->src, dst, cryptlen, req->iv);

	FUNC11(iv, req->iv, FUNC8(authenc));

	err = FUNC5(abreq);
	if (err)
		return err;

	return FUNC10(req, iv, CRYPTO_TFM_REQ_MAY_SLEEP);
}