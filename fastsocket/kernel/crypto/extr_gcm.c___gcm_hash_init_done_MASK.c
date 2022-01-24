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
struct crypto_gcm_req_priv_ctx {int dummy; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  assoc; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  gcm_hash_assoc_done ; 
 int /*<<< orphan*/  gcm_hash_assoc_remain_done ; 
 int FUNC3 (struct aead_request*,struct crypto_gcm_req_priv_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC2(req);
	crypto_completion_t complete;
	unsigned int remain = 0;

	if (!err && req->assoclen) {
		remain = FUNC4(req->assoclen);
		complete = remain ? gcm_hash_assoc_done :
			gcm_hash_assoc_remain_done;
		err = FUNC3(req, pctx, complete,
				      req->assoc, req->assoclen);
		if (err == -EINPROGRESS || err == -EBUSY)
			return;
	}

	if (remain)
		FUNC0(req, err);
	else
		FUNC1(req, err);
}