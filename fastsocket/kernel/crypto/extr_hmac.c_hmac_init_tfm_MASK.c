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
struct shash_desc {int dummy; } ;
struct hmac_ctx {struct crypto_shash* hash; } ;
struct crypto_tfm {scalar_t__ __crt_alg; } ;
struct crypto_shash_spawn {int dummy; } ;
struct crypto_shash {scalar_t__ descsize; } ;
struct crypto_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (struct crypto_tfm*) ; 
 struct crypto_shash_spawn* FUNC3 (struct crypto_instance*) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC5 (struct crypto_shash_spawn*) ; 
 struct hmac_ctx* FUNC6 (struct crypto_shash*) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	struct crypto_shash *parent = FUNC2(tfm);
	struct crypto_shash *hash;
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_shash_spawn *spawn = FUNC3(inst);
	struct hmac_ctx *ctx = FUNC6(parent);

	hash = FUNC5(spawn);
	if (FUNC0(hash))
		return FUNC1(hash);

	parent->descsize = sizeof(struct shash_desc) +
			   FUNC4(hash);

	ctx->hash = hash;
	return 0;
}