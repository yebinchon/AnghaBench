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
struct authenc_instance_ctx {int /*<<< orphan*/  auth; int /*<<< orphan*/  enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct authenc_instance_ctx* FUNC2 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_instance*) ; 

__attribute__((used)) static void FUNC4(struct crypto_instance *inst)
{
	struct authenc_instance_ctx *ctx = FUNC2(inst);

	FUNC1(&ctx->enc);
	FUNC0(&ctx->auth);
	FUNC3(inst);
}