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
struct cryptd_hash_request_ctx {int /*<<< orphan*/  desc; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct cryptd_hash_request_ctx* FUNC0 (struct ahash_request*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void const*) ; 

__attribute__((used)) static int FUNC2(struct ahash_request *req, const void *in)
{
	struct cryptd_hash_request_ctx *rctx = FUNC0(req);

	return FUNC1(&rctx->desc, in);
}