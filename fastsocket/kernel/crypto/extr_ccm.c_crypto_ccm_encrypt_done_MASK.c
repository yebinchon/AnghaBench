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
struct crypto_ccm_req_priv_ctx {int /*<<< orphan*/ * odata; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 struct crypto_ccm_req_priv_ctx* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *areq, int err)
{
	struct aead_request *req = areq->data;
	struct crypto_aead *aead = FUNC2(req);
	struct crypto_ccm_req_priv_ctx *pctx = FUNC3(req);
	u8 *odata = pctx->odata;

	if (!err)
		FUNC4(odata, req->dst, req->cryptlen,
					 FUNC1(aead), 1);
	FUNC0(req, err);
}