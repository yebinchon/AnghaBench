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
struct crypto_rfc4543_req_ctx {int /*<<< orphan*/  auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct aead_request*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 struct aead_request* FUNC3 (struct aead_request*,int) ; 
 struct crypto_rfc4543_req_ctx* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC2(req);
	struct crypto_rfc4543_req_ctx *rctx = FUNC4(req);
	struct aead_request *subreq;
	int err;

	subreq = FUNC3(req, 1);
	err = FUNC1(subreq);
	if (err)
		return err;

	FUNC5(rctx->auth_tag, req->dst, req->cryptlen,
				 FUNC0(aead), 1);

	return 0;
}