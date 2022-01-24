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
struct ixp_ctx {int /*<<< orphan*/  encrypt; int /*<<< orphan*/  decrypt; int /*<<< orphan*/  configuring; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ixp_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct ixp_ctx *ctx = FUNC1(tfm);
	int ret;

	FUNC0(&ctx->configuring, 0);
	ret = FUNC3(&ctx->encrypt);
	if (ret)
		return ret;
	ret = FUNC3(&ctx->decrypt);
	if (ret) {
		FUNC2(&ctx->encrypt);
	}
	return ret;
}