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
struct TYPE_2__ {int cra_flags; } ;
struct crypto_instance {TYPE_1__ alg; } ;

/* Variables and functions */
 int CRYPTO_ALG_TYPE_AEAD ; 
 int CRYPTO_ALG_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_instance*) ; 

__attribute__((used)) static void FUNC3(struct crypto_instance *inst)
{
	if ((inst->alg.cra_flags ^ CRYPTO_ALG_TYPE_AEAD) & CRYPTO_ALG_TYPE_MASK)
		FUNC2(inst);
	else
		FUNC0(inst);
	FUNC1();
}