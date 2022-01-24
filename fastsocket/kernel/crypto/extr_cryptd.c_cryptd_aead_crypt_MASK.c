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
struct cryptd_aead_request_ctx {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 struct cryptd_aead_request_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*,struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct aead_request *req,
			struct crypto_aead *child,
			int err,
			int (*crypt)(struct aead_request *req))
{
	struct cryptd_aead_request_ctx *rctx;
	rctx = FUNC0(req);

	if (FUNC5(err == -EINPROGRESS))
		goto out;
	FUNC1(req, child);
	err = crypt( req );
	req->base.complete = rctx->complete;
out:
	FUNC2();
	rctx->complete(&req->base, err);
	FUNC3();
}