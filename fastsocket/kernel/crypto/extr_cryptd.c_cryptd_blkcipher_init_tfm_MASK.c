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
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_blkcipher {int dummy; } ;
struct cryptd_instance_ctx {struct crypto_spawn spawn; } ;
struct cryptd_blkcipher_request_ctx {int dummy; } ;
struct cryptd_blkcipher_ctx {struct crypto_blkcipher* child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_blkcipher*) ; 
 int FUNC1 (struct crypto_blkcipher*) ; 
 struct cryptd_instance_ctx* FUNC2 (struct crypto_instance*) ; 
 struct crypto_blkcipher* FUNC3 (struct crypto_spawn*) ; 
 struct crypto_instance* FUNC4 (struct crypto_tfm*) ; 
 struct cryptd_blkcipher_ctx* FUNC5 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	struct crypto_instance *inst = FUNC4(tfm);
	struct cryptd_instance_ctx *ictx = FUNC2(inst);
	struct crypto_spawn *spawn = &ictx->spawn;
	struct cryptd_blkcipher_ctx *ctx = FUNC5(tfm);
	struct crypto_blkcipher *cipher;

	cipher = FUNC3(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;
	tfm->crt_ablkcipher.reqsize =
		sizeof(struct cryptd_blkcipher_request_ctx);
	return 0;
}