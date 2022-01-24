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
struct shash_desc {int /*<<< orphan*/  flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ahash_request {TYPE_1__ base; } ;

/* Variables and functions */
 struct shash_desc* FUNC0 (struct ahash_request*) ; 
 struct crypto_shash** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req)
{
	struct crypto_shash **ctx = FUNC1(FUNC2(req));
	struct shash_desc *desc = FUNC0(req);

	desc->tfm = *ctx;
	desc->flags = req->base.flags;

	return FUNC3(desc);
}