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
struct crypto_tfm {int crt_flags; } ;
struct crypt_s390_des3_192_ctx {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_WEAK_KEY ; 
 int CRYPTO_TFM_RES_WEAK_KEY ; 
 size_t DES_KEY_SIZE ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t,int*) ; 
 struct crypt_s390_des3_192_ctx* FUNC1 (struct crypto_tfm*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm, const u8 *key,
			   unsigned int keylen)
{
	int i, ret;
	struct crypt_s390_des3_192_ctx *dctx = FUNC1(tfm);
	const u8 *temp_key = key;
	u32 *flags = &tfm->crt_flags;

	if (!(FUNC2(key, &key[DES_KEY_SIZE], DES_KEY_SIZE) &&
	    FUNC2(&key[DES_KEY_SIZE], &key[DES_KEY_SIZE * 2],
		   DES_KEY_SIZE)) &&
	    (*flags & CRYPTO_TFM_REQ_WEAK_KEY)) {
		*flags |= CRYPTO_TFM_RES_WEAK_KEY;
		return -EINVAL;
	}
	for (i = 0; i < 3; i++, temp_key += DES_KEY_SIZE) {
		ret = FUNC0(temp_key, DES_KEY_SIZE, flags);
		if (ret < 0)
			return ret;
	}
	FUNC3(dctx->key, key, keylen);
	return 0;
}