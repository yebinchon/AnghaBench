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
struct chainiv_ctx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_tfm*) ; 
 struct chainiv_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct chainiv_ctx *ctx = FUNC1(tfm);

	FUNC2(&ctx->lock);

	return FUNC0(tfm);
}