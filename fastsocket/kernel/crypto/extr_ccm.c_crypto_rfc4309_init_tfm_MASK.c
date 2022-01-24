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
struct crypto_tfm {TYPE_1__ crt_aead; scalar_t__ __crt_alg; } ;
struct crypto_rfc4309_ctx {struct crypto_aead* child; } ;
struct crypto_instance {int dummy; } ;
struct crypto_aead_spawn {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*) ; 
 unsigned long FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_aead*) ; 
 struct crypto_aead_spawn* FUNC5 (struct crypto_instance*) ; 
 struct crypto_aead* FUNC6 (struct crypto_aead_spawn*) ; 
 struct crypto_rfc4309_ctx* FUNC7 (struct crypto_tfm*) ; 
 int FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_aead_spawn *spawn = FUNC5(inst);
	struct crypto_rfc4309_ctx *ctx = FUNC7(tfm);
	struct crypto_aead *aead;
	unsigned long align;

	aead = FUNC6(spawn);
	if (FUNC1(aead))
		return FUNC2(aead);

	ctx->child = aead;

	align = FUNC3(aead);
	align &= ~(FUNC8() - 1);
	tfm->crt_aead.reqsize = sizeof(struct aead_request) +
				FUNC0(FUNC4(aead),
				      FUNC8()) +
				align + 16;

	return 0;
}