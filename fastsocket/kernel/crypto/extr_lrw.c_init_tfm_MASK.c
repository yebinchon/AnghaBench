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
typedef  int /*<<< orphan*/  u32 ;
struct priv {struct crypto_cipher* child; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; scalar_t__ __crt_alg; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 scalar_t__ LRW_BLOCK_SIZE ; 
 int FUNC1 (struct crypto_cipher*) ; 
 scalar_t__ FUNC2 (struct crypto_cipher*) ; 
 struct crypto_spawn* FUNC3 (struct crypto_instance*) ; 
 struct crypto_cipher* FUNC4 (struct crypto_spawn*) ; 
 struct priv* FUNC5 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm)
{
	struct crypto_cipher *cipher;
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_spawn *spawn = FUNC3(inst);
	struct priv *ctx = FUNC5(tfm);
	u32 *flags = &tfm->crt_flags;

	cipher = FUNC4(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	if (FUNC2(cipher) != LRW_BLOCK_SIZE) {
		*flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
		return -EINVAL;
	}

	ctx->child = cipher;
	return 0;
}