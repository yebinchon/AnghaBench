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
struct priv {struct crypto_cipher* child; struct crypto_cipher* tweak; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MASK ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int) ; 
 int FUNC1 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_cipher*,int) ; 
 int FUNC3 (struct crypto_cipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct priv* FUNC4 (struct crypto_tfm*) ; 
 int FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_tfm*,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *parent, const u8 *key,
		  unsigned int keylen)
{
	struct priv *ctx = FUNC4(parent);
	struct crypto_cipher *child = ctx->tweak;
	u32 *flags = &parent->crt_flags;
	int err;

	/* key consists of keys of equal size concatenated, therefore
	 * the length must be even */
	if (keylen % 2) {
		/* tell the user why there was an error */
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	/* we need two cipher instances: one to compute the inital 'tweak'
	 * by encrypting the IV (usually the 'plain' iv) and the other
	 * one to encrypt and decrypt the data */

	/* tweak cipher, uses Key2 i.e. the second half of *key */
	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC2(child, FUNC5(parent) &
				       CRYPTO_TFM_REQ_MASK);
	err = FUNC3(child, key + keylen/2, keylen/2);
	if (err)
		return err;

	FUNC6(parent, FUNC1(child) &
				     CRYPTO_TFM_RES_MASK);

	child = ctx->child;

	/* data cipher, uses Key1 i.e. the first half of *key */
	FUNC0(child, CRYPTO_TFM_REQ_MASK);
	FUNC2(child, FUNC5(parent) &
				       CRYPTO_TFM_REQ_MASK);
	err = FUNC3(child, key, keylen/2);
	if (err)
		return err;

	FUNC6(parent, FUNC1(child) &
				     CRYPTO_TFM_RES_MASK);

	return 0;
}