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
typedef  int /*<<< orphan*/  u32 ;
struct s390_aes_ctx {unsigned int key_len; int /*<<< orphan*/  key; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct s390_aes_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm, const u8 *in_key,
		       unsigned int key_len)
{
	struct s390_aes_ctx *sctx = FUNC0(tfm);
	u32 *flags = &tfm->crt_flags;
	int ret;

	ret = FUNC2(key_len);
	if (ret < 0) {
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	sctx->key_len = key_len;
	if (!ret) {
		FUNC1(sctx->key, in_key, key_len);
		return 0;
	}

	return FUNC3(tfm, in_key, key_len);
}