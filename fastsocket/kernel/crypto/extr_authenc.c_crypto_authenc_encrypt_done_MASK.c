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
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 struct ablkcipher_request* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct crypto_authenc_ctx* FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int FUNC5 (struct aead_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct crypto_async_request *req,
					int err)
{
	struct aead_request *areq = req->data;

	if (!err) {
		struct crypto_aead *authenc = FUNC4(areq);
		struct crypto_authenc_ctx *ctx = FUNC3(authenc);
		struct ablkcipher_request *abreq = FUNC0(areq);
		u8 *iv = (u8 *)(abreq + 1) +
			 FUNC2(ctx->enc);

		err = FUNC5(areq, iv, 0);
	}

	FUNC1(areq, err);
}