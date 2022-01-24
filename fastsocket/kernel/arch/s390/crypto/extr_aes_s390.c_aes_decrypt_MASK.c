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
struct TYPE_2__ {int /*<<< orphan*/  cip; } ;
struct s390_aes_ctx {int key_len; int /*<<< orphan*/  key; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  KM_AES_128_DECRYPT ; 
 int /*<<< orphan*/  KM_AES_192_DECRYPT ; 
 int /*<<< orphan*/  KM_AES_256_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct s390_aes_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct s390_aes_ctx *sctx = FUNC2(tfm);

	if (FUNC4(FUNC3(sctx->key_len))) {
		FUNC1(sctx->fallback.cip, out, in);
		return;
	}

	switch (sctx->key_len) {
	case 16:
		FUNC0(KM_AES_128_DECRYPT, &sctx->key, out, in,
			      AES_BLOCK_SIZE);
		break;
	case 24:
		FUNC0(KM_AES_192_DECRYPT, &sctx->key, out, in,
			      AES_BLOCK_SIZE);
		break;
	case 32:
		FUNC0(KM_AES_256_DECRYPT, &sctx->key, out, in,
			      AES_BLOCK_SIZE);
		break;
	}
}