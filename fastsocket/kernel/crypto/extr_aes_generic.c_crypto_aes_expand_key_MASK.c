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
struct crypto_aes_ctx {unsigned int key_length; int* key_dec; int* key_enc; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct crypto_aes_ctx *ctx, const u8 *in_key,
		unsigned int key_len)
{
	const __le32 *key = (const __le32 *)in_key;
	u32 i, t, u, v, w, j;

	if (key_len != AES_KEYSIZE_128 && key_len != AES_KEYSIZE_192 &&
			key_len != AES_KEYSIZE_256)
		return -EINVAL;

	ctx->key_length = key_len;

	ctx->key_dec[key_len + 24] = ctx->key_enc[0] = FUNC1(key[0]);
	ctx->key_dec[key_len + 25] = ctx->key_enc[1] = FUNC1(key[1]);
	ctx->key_dec[key_len + 26] = ctx->key_enc[2] = FUNC1(key[2]);
	ctx->key_dec[key_len + 27] = ctx->key_enc[3] = FUNC1(key[3]);

	switch (key_len) {
	case AES_KEYSIZE_128:
		t = ctx->key_enc[3];
		for (i = 0; i < 10; ++i)
			FUNC2(i);
		break;

	case AES_KEYSIZE_192:
		ctx->key_enc[4] = FUNC1(key[4]);
		t = ctx->key_enc[5] = FUNC1(key[5]);
		for (i = 0; i < 8; ++i)
			FUNC3(i);
		break;

	case AES_KEYSIZE_256:
		ctx->key_enc[4] = FUNC1(key[4]);
		ctx->key_enc[5] = FUNC1(key[5]);
		ctx->key_enc[6] = FUNC1(key[6]);
		t = ctx->key_enc[7] = FUNC1(key[7]);
		for (i = 0; i < 6; ++i)
			FUNC4(i);
		FUNC5(i);
		break;
	}

	ctx->key_dec[0] = ctx->key_enc[key_len + 24];
	ctx->key_dec[1] = ctx->key_enc[key_len + 25];
	ctx->key_dec[2] = ctx->key_enc[key_len + 26];
	ctx->key_dec[3] = ctx->key_enc[key_len + 27];

	for (i = 4; i < key_len + 24; ++i) {
		j = key_len + 24 - (i & ~3) + (i & 3);
		FUNC0(ctx->key_dec[j], ctx->key_enc[i]);
	}
	return 0;
}