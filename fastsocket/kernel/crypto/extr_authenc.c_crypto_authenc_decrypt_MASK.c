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
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; int /*<<< orphan*/ * iv; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 struct ablkcipher_request* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct ablkcipher_request*) ; 
 unsigned int FUNC6 (struct crypto_aead*) ; 
 struct crypto_authenc_ctx* FUNC7 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC8 (struct aead_request*) ; 
 int FUNC9 (struct aead_request*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req)
{
	struct crypto_aead *authenc = FUNC8(req);
	struct crypto_authenc_ctx *ctx = FUNC7(authenc);
	struct ablkcipher_request *abreq = FUNC3(req);
	unsigned int cryptlen = req->cryptlen;
	unsigned int authsize = FUNC6(authenc);
	u8 *iv = req->iv;
	int err;

	if (cryptlen < authsize)
		return -EINVAL;
	cryptlen -= authsize;

	err = FUNC9(req, iv, cryptlen);
	if (err)
		return err;

	FUNC2(abreq, ctx->enc);
	FUNC0(abreq, FUNC4(req),
					req->base.complete, req->base.data);
	FUNC1(abreq, req->src, req->dst, cryptlen, iv);

	return FUNC5(abreq);
}