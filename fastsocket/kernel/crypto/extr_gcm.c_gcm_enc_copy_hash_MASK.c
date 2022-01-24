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
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/ * auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct aead_request *req,
			      struct crypto_gcm_req_priv_ctx *pctx)
{
	struct crypto_aead *aead = FUNC1(req);
	u8 *auth_tag = pctx->auth_tag;

	FUNC2(auth_tag, req->dst, req->cryptlen,
				 FUNC0(aead), 1);
}