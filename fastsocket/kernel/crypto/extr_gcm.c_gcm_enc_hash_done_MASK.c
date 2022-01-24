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
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*,int) ; 
 struct crypto_gcm_req_priv_ctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ; 

__attribute__((used)) static void FUNC3(struct aead_request *req, int err)
{
	struct crypto_gcm_req_priv_ctx *pctx = FUNC1(req);

	if (!err)
		FUNC2(req, pctx);

	FUNC0(req, err);
}