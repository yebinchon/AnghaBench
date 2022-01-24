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
struct rtattr {scalar_t__ rta_type; int /*<<< orphan*/  rta_len; } ;
struct crypto_authenc_key_param {int /*<<< orphan*/  enckeylen; } ;
struct crypto_authenc_ctx {struct crypto_ablkcipher* enc; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_authenc_key_param* FUNC1 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtattr*,unsigned int) ; 
 int FUNC3 (struct rtattr*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ablkcipher*,int) ; 
 int FUNC6 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_ablkcipher*,int) ; 
 int FUNC8 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct crypto_authenc_ctx* FUNC9 (struct crypto_aead*) ; 
 int FUNC10 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC11 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_ahash*,int) ; 
 int FUNC13 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC14 (struct crypto_ahash*,int) ; 
 int FUNC15 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct crypto_aead *authenc, const u8 *key,
				 unsigned int keylen)
{
	unsigned int authkeylen;
	unsigned int enckeylen;
	struct crypto_authenc_ctx *ctx = FUNC9(authenc);
	struct crypto_ahash *auth = ctx->auth;
	struct crypto_ablkcipher *enc = ctx->enc;
	struct rtattr *rta = (void *)key;
	struct crypto_authenc_key_param *param;
	int err = -EINVAL;

	if (!FUNC2(rta, keylen))
		goto badkey;
	if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
		goto badkey;
	if (FUNC3(rta) < sizeof(*param))
		goto badkey;

	param = FUNC1(rta);
	enckeylen = FUNC4(param->enckeylen);

	key += FUNC0(rta->rta_len);
	keylen -= FUNC0(rta->rta_len);

	if (keylen < enckeylen)
		goto badkey;

	authkeylen = keylen - enckeylen;

	FUNC12(auth, CRYPTO_TFM_REQ_MASK);
	FUNC14(auth, FUNC10(authenc) &
				    CRYPTO_TFM_REQ_MASK);
	err = FUNC15(auth, key, authkeylen);
	FUNC11(authenc, FUNC13(auth) &
				       CRYPTO_TFM_RES_MASK);

	if (err)
		goto out;

	FUNC5(enc, CRYPTO_TFM_REQ_MASK);
	FUNC7(enc, FUNC10(authenc) &
					 CRYPTO_TFM_REQ_MASK);
	err = FUNC8(enc, key + authkeylen, enckeylen);
	FUNC11(authenc, FUNC6(enc) &
				       CRYPTO_TFM_RES_MASK);

out:
	return err;

badkey:
	FUNC11(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
	goto out;
}