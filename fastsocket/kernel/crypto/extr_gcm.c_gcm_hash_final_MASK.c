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
struct ahash_request {int dummy; } ;
struct TYPE_2__ {struct ahash_request ahreq; } ;
struct crypto_gcm_req_priv_ctx {int /*<<< orphan*/  iauth_tag; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  gcm_hash_final_done ; 

__attribute__((used)) static int FUNC4(struct aead_request *req,
			  struct crypto_gcm_req_priv_ctx *pctx)
{
	struct ahash_request *ahreq = &pctx->u.ahreq;

	FUNC1(ahreq, FUNC0(req),
				   gcm_hash_final_done, req);
	FUNC2(ahreq, NULL, pctx->iauth_tag, 0);

	return FUNC3(ahreq);
}