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
struct crypto_tfm {TYPE_1__ crt_ablkcipher; scalar_t__ __crt_alg; } ;
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_rfc3686_req_ctx {int dummy; } ;
struct crypto_rfc3686_ctx {struct crypto_ablkcipher* child; } ;
struct crypto_instance {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_ablkcipher*) ; 
 int FUNC1 (struct crypto_ablkcipher*) ; 
 scalar_t__ FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_skcipher_spawn* FUNC3 (struct crypto_instance*) ; 
 struct crypto_ablkcipher* FUNC4 (struct crypto_skcipher_spawn*) ; 
 unsigned long FUNC5 (struct crypto_tfm*) ; 
 struct crypto_rfc3686_ctx* FUNC6 (struct crypto_tfm*) ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_skcipher_spawn *spawn = FUNC3(inst);
	struct crypto_rfc3686_ctx *ctx = FUNC6(tfm);
	struct crypto_ablkcipher *cipher;
	unsigned long align;

	cipher = FUNC4(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;

	align = FUNC5(tfm);
	align &= ~(FUNC7() - 1);
	tfm->crt_ablkcipher.reqsize = align +
		sizeof(struct crypto_rfc3686_req_ctx) +
		FUNC2(cipher);

	return 0;
}