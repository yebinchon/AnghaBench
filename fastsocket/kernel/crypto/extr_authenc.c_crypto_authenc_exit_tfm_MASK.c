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
struct crypto_authenc_ctx {int /*<<< orphan*/  enc; int /*<<< orphan*/  auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct crypto_authenc_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct crypto_authenc_ctx *ctx = FUNC2(tfm);

	FUNC1(ctx->auth);
	FUNC0(ctx->enc);
}