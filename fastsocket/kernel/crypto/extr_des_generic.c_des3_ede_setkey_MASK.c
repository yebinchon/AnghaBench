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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct des3_ede_ctx {int* expkey; } ;
struct crypto_tfm {int crt_flags; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_WEAK_KEY ; 
 int CRYPTO_TFM_RES_WEAK_KEY ; 
 int /*<<< orphan*/  DES_EXPKEY_WORDS ; 
 int /*<<< orphan*/  DES_KEY_SIZE ; 
 int EINVAL ; 
 struct des3_ede_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm, const u8 *key,
			   unsigned int keylen)
{
	const u32 *K = (const u32 *)key;
	struct des3_ede_ctx *dctx = FUNC0(tfm);
	u32 *expkey = dctx->expkey;
	u32 *flags = &tfm->crt_flags;

	if (FUNC3(!((K[0] ^ K[2]) | (K[1] ^ K[3])) ||
		     !((K[2] ^ K[4]) | (K[3] ^ K[5]))) &&
		     (*flags & CRYPTO_TFM_REQ_WEAK_KEY))
	{
		*flags |= CRYPTO_TFM_RES_WEAK_KEY;
		return -EINVAL;
	}

	FUNC1(expkey, key); expkey += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
	FUNC2(expkey, key); expkey += DES_EXPKEY_WORDS; key += DES_KEY_SIZE;
	FUNC1(expkey, key);

	return 0;
}