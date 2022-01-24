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
struct crypto_ccm_req_priv_ctx {int /*<<< orphan*/  odata; int /*<<< orphan*/  auth_tag; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int FUNC3 (struct aead_request*,int /*<<< orphan*/ ,unsigned int) ; 
 struct crypto_ccm_req_priv_ctx* FUNC4 (struct aead_request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct crypto_async_request *areq,
				   int err)
{
	struct aead_request *req = areq->data;
	struct crypto_ccm_req_priv_ctx *pctx = FUNC4(req);
	struct crypto_aead *aead = FUNC2(req);
	unsigned int authsize = FUNC1(aead);
	unsigned int cryptlen = req->cryptlen - authsize;

	if (!err) {
		err = FUNC3(req, req->dst, cryptlen);
		if (!err && FUNC5(pctx->auth_tag, pctx->odata, authsize))
			err = -EBADMSG;
	}
	FUNC0(req, err);
}