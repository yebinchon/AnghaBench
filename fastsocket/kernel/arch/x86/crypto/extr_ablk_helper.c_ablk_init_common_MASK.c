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
struct TYPE_2__ {scalar_t__ reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct cryptd_ablkcipher {int /*<<< orphan*/  base; } ;
struct async_helper_ctx {struct cryptd_ablkcipher* cryptd_tfm; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cryptd_ablkcipher*) ; 
 int FUNC1 (struct cryptd_ablkcipher*) ; 
 struct cryptd_ablkcipher* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct async_helper_ctx* FUNC4 (struct crypto_tfm*) ; 

int FUNC5(struct crypto_tfm *tfm, const char *drv_name)
{
	struct async_helper_ctx *ctx = FUNC4(tfm);
	struct cryptd_ablkcipher *cryptd_tfm;

	cryptd_tfm = FUNC2(drv_name, 0, 0);
	if (FUNC0(cryptd_tfm))
		return FUNC1(cryptd_tfm);

	ctx->cryptd_tfm = cryptd_tfm;
	tfm->crt_ablkcipher.reqsize = sizeof(struct ablkcipher_request) +
		FUNC3(&cryptd_tfm->base);

	return 0;
}