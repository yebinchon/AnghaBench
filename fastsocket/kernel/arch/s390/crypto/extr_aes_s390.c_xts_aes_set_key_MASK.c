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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct s390_xts_ctx {unsigned int key_len; TYPE_1__ pcc; int /*<<< orphan*/  key; int /*<<< orphan*/  dec; int /*<<< orphan*/  enc; } ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  KM_XTS_128_DECRYPT ; 
 int /*<<< orphan*/  KM_XTS_128_ENCRYPT ; 
 int /*<<< orphan*/  KM_XTS_256_DECRYPT ; 
 int /*<<< orphan*/  KM_XTS_256_ENCRYPT ; 
 struct s390_xts_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm, const u8 *in_key,
			   unsigned int key_len)
{
	struct s390_xts_ctx *xts_ctx = FUNC0(tfm);
	u32 *flags = &tfm->crt_flags;

	switch (key_len) {
	case 32:
		xts_ctx->enc = KM_XTS_128_ENCRYPT;
		xts_ctx->dec = KM_XTS_128_DECRYPT;
		FUNC1(xts_ctx->key + 16, in_key, 16);
		FUNC1(xts_ctx->pcc.key + 16, in_key + 16, 16);
		break;
	case 48:
		xts_ctx->enc = 0;
		xts_ctx->dec = 0;
		FUNC2(tfm, in_key, key_len);
		break;
	case 64:
		xts_ctx->enc = KM_XTS_256_ENCRYPT;
		xts_ctx->dec = KM_XTS_256_DECRYPT;
		FUNC1(xts_ctx->key, in_key, 32);
		FUNC1(xts_ctx->pcc.key, in_key + 32, 32);
		break;
	default:
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}
	xts_ctx->key_len = key_len;
	return 0;
}