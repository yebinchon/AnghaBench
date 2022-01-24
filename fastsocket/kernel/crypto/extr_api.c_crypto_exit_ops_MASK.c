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
struct crypto_type {int dummy; } ;
struct crypto_tfm {int /*<<< orphan*/  (* exit ) (struct crypto_tfm*) ;TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {struct crypto_type* cra_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CRYPTO_ALG_TYPE_CIPHER 129 
#define  CRYPTO_ALG_TYPE_COMPRESS 128 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm)
{
	const struct crypto_type *type = tfm->__crt_alg->cra_type;

	if (type) {
		if (tfm->exit)
			tfm->exit(tfm);
		return;
	}

	switch (FUNC3(tfm)) {
	case CRYPTO_ALG_TYPE_CIPHER:
		FUNC1(tfm);
		break;

	case CRYPTO_ALG_TYPE_COMPRESS:
		FUNC2(tfm);
		break;
	
	default:
		FUNC0();
		
	}
}