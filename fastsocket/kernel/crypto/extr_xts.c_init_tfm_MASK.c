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
struct priv {struct crypto_cipher* tweak; struct crypto_cipher* child; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; scalar_t__ __crt_alg; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_BLOCK_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 scalar_t__ XTS_BLOCK_SIZE ; 
 scalar_t__ FUNC2 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*) ; 
 struct crypto_spawn* FUNC4 (struct crypto_instance*) ; 
 struct crypto_cipher* FUNC5 (struct crypto_spawn*) ; 
 struct priv* FUNC6 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	struct crypto_cipher *cipher;
	struct crypto_instance *inst = (void *)tfm->__crt_alg;
	struct crypto_spawn *spawn = FUNC4(inst);
	struct priv *ctx = FUNC6(tfm);
	u32 *flags = &tfm->crt_flags;

	cipher = FUNC5(spawn);
	if (FUNC0(cipher))
		return FUNC1(cipher);

	if (FUNC2(cipher) != XTS_BLOCK_SIZE) {
		*flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
		FUNC3(cipher);
		return -EINVAL;
	}

	ctx->child = cipher;

	cipher = FUNC5(spawn);
	if (FUNC0(cipher)) {
		FUNC3(ctx->child);
		return FUNC1(cipher);
	}

	/* this check isn't really needed, leave it here just in case */
	if (FUNC2(cipher) != XTS_BLOCK_SIZE) {
		FUNC3(cipher);
		FUNC3(ctx->child);
		*flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
		return -EINVAL;
	}

	ctx->tweak = cipher;

	return 0;
}