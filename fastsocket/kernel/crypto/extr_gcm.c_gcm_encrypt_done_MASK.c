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
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  iauth_tag; int /*<<< orphan*/  auth_tag; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 
 int FUNC4 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 

__attribute__((used)) static void FUNC5(struct crypto_async_request *areq, int err)
{
	struct aead_request *req = areq->data;
	struct crypto_gcm_req_priv_ctx *pctx = FUNC1(req);

	if (!err) {
		err = FUNC4(req, pctx);
		if (err == -EINPROGRESS || err == -EBUSY)
			return;
		else if (!err) {
			FUNC2(pctx->auth_tag, pctx->iauth_tag, 16);
			FUNC3(req, pctx);
		}
	}

	FUNC0(req, err);
}