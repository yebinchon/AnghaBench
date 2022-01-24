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
struct ixp_ctx {unsigned int enckey_len; unsigned int authkey_len; int /*<<< orphan*/  authkey; int /*<<< orphan*/  enckey; } ;
struct crypto_authenc_key_param {int /*<<< orphan*/  enckeylen; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_authenc_key_param* FUNC1 (struct rtattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtattr*,unsigned int) ; 
 int FUNC3 (struct rtattr*) ; 
 int FUNC4 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_aead*) ; 
 struct ixp_ctx* FUNC7 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_aead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC10(struct crypto_aead *tfm, const u8 *key,
			unsigned int keylen)
{
	struct ixp_ctx *ctx = FUNC7(tfm);
	struct rtattr *rta = (struct rtattr *)key;
	struct crypto_authenc_key_param *param;

	if (!FUNC2(rta, keylen))
		goto badkey;
	if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
		goto badkey;
	if (FUNC3(rta) < sizeof(*param))
		goto badkey;

	param = FUNC1(rta);
	ctx->enckey_len = FUNC5(param->enckeylen);

	key += FUNC0(rta->rta_len);
	keylen -= FUNC0(rta->rta_len);

	if (keylen < ctx->enckey_len)
		goto badkey;

	ctx->authkey_len = keylen - ctx->enckey_len;
	FUNC9(ctx->enckey, key + ctx->authkey_len, ctx->enckey_len);
	FUNC9(ctx->authkey, key, ctx->authkey_len);

	return FUNC4(tfm, FUNC6(tfm));
badkey:
	ctx->enckey_len = 0;
	FUNC8(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}