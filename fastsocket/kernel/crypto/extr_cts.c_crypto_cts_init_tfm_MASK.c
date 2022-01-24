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
struct crypto_tfm {scalar_t__ __crt_alg; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cts_ctx {struct crypto_blkcipher* child; } ;
struct crypto_blkcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_blkcipher*) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 struct crypto_spawn* FUNC2 (struct crypto_instance*) ; 
 struct crypto_blkcipher* FUNC3 (struct crypto_spawn*) ; 
 struct crypto_cts_ctx* FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC5(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_spawn *spawn = FUNC2(inst);
	struct crypto_cts_ctx *ctx = FUNC4(tfm);
	struct crypto_blkcipher *cipher;

	cipher = FUNC3(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;
	return 0;
}