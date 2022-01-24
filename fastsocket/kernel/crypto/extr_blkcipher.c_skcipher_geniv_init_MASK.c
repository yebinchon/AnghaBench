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
struct TYPE_2__ {int /*<<< orphan*/  reqsize; struct crypto_ablkcipher* base; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; scalar_t__ __crt_alg; } ;
struct crypto_instance {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_ablkcipher*) ; 
 int FUNC1 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC2 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_instance*) ; 
 struct crypto_ablkcipher* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_ablkcipher *cipher;

	cipher = FUNC4(FUNC3(inst));
	if (FUNC0(cipher))
		return FUNC1(cipher);

	tfm->crt_ablkcipher.base = cipher;
	tfm->crt_ablkcipher.reqsize += FUNC2(cipher);

	return 0;
}