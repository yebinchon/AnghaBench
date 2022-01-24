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
struct vmac_ctx_t {int /*<<< orphan*/  child; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vmac_ctx_t* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm)
{
	struct vmac_ctx_t *ctx = FUNC1(tfm);
	FUNC0(ctx->child);
}