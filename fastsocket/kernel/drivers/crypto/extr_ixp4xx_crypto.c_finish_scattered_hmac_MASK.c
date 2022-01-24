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
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {struct aead_request* aead_req; } ;
struct crypt_ctl {int /*<<< orphan*/  icv_rev_aes; TYPE_1__ data; } ;
struct aead_request {int cryptlen; int /*<<< orphan*/  src; } ;
struct aead_ctx {int /*<<< orphan*/  hmac_virt; scalar_t__ encrypt; } ;

/* Variables and functions */
 struct aead_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  buffer_pool ; 
 int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct crypt_ctl *crypt)
{
	struct aead_request *req = crypt->data.aead_req;
	struct aead_ctx *req_ctx = FUNC0(req);
	struct crypto_aead *tfm = FUNC2(req);
	int authsize = FUNC1(tfm);
	int decryptlen = req->cryptlen - authsize;

	if (req_ctx->encrypt) {
		FUNC4(req_ctx->hmac_virt,
			req->src, decryptlen, authsize, 1);
	}
	FUNC3(buffer_pool, req_ctx->hmac_virt, crypt->icv_rev_aes);
}