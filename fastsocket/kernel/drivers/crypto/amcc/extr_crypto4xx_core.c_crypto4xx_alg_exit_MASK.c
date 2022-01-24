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
struct crypto4xx_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto4xx_ctx*) ; 
 struct crypto4xx_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct crypto4xx_ctx *ctx = FUNC2(tfm);

	FUNC0(ctx);
	FUNC1(ctx);
}