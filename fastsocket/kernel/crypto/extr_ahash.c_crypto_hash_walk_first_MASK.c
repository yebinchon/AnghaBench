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
struct crypto_hash_walk {int /*<<< orphan*/  flags; int /*<<< orphan*/  sg; int /*<<< orphan*/  alignmask; int /*<<< orphan*/  total; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ahash_request {TYPE_1__ base; int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct crypto_hash_walk*) ; 

int FUNC3(struct ahash_request *req,
			   struct crypto_hash_walk *walk)
{
	walk->total = req->nbytes;

	if (!walk->total)
		return 0;

	walk->alignmask = FUNC0(FUNC1(req));
	walk->sg = req->src;
	walk->flags = req->base.flags;

	return FUNC2(walk);
}