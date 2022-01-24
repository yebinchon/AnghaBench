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
struct TYPE_2__ {int /*<<< orphan*/  reqsize; struct crypto_aead* base; } ;
struct crypto_tfm {TYPE_1__ crt_aead; scalar_t__ __crt_alg; } ;
struct crypto_instance {int dummy; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 scalar_t__ FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_instance*) ; 
 struct crypto_aead* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_aead *aead;

	aead = FUNC4(FUNC3(inst));
	if (FUNC0(aead))
		return FUNC1(aead);

	tfm->crt_aead.base = aead;
	tfm->crt_aead.reqsize += FUNC2(aead);

	return 0;
}