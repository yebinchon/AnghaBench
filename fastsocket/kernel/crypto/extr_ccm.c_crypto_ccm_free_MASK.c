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
struct crypto_instance {int dummy; } ;
struct ccm_instance_ctx {int /*<<< orphan*/  ctr; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ccm_instance_ctx* FUNC2 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_instance*) ; 

__attribute__((used)) static void FUNC4(struct crypto_instance *inst)
{
	struct ccm_instance_ctx *ctx = FUNC2(inst);

	FUNC1(&ctx->cipher);
	FUNC0(&ctx->ctr);
	FUNC3(inst);
}