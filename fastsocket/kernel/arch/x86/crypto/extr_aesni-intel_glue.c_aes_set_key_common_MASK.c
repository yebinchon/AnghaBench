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
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct crypto_aes_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct crypto_aes_ctx* FUNC0 (void*) ; 
 int FUNC1 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct crypto_tfm *tfm, void *raw_ctx,
			      const u8 *in_key, unsigned int key_len)
{
	struct crypto_aes_ctx *ctx = FUNC0(raw_ctx);
	u32 *flags = &tfm->crt_flags;
	int err;

	if (key_len != AES_KEYSIZE_128 && key_len != AES_KEYSIZE_192 &&
	    key_len != AES_KEYSIZE_256) {
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	if (!FUNC3())
		err = FUNC2(ctx, in_key, key_len);
	else {
		FUNC4();
		err = FUNC1(ctx, in_key, key_len);
		FUNC5();
	}

	return err;
}