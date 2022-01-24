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
struct crypto_tfm {int dummy; } ;
struct async_chainiv_ctx {int /*<<< orphan*/  postponed; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_chainiv_do_postponed ; 
 int FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct async_chainiv_ctx* FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	struct async_chainiv_ctx *ctx = FUNC3(tfm);

	FUNC4(&ctx->lock);

	FUNC2(&ctx->queue, 100);
	FUNC0(&ctx->postponed, async_chainiv_do_postponed);

	return FUNC1(tfm);
}