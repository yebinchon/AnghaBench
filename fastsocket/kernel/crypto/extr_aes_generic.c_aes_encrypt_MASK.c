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
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int* key_enc; int key_length; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct crypto_aes_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int const*) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct crypto_aes_ctx *ctx = FUNC1(tfm);
	const __le32 *src = (const __le32 *)in;
	__le32 *dst = (__le32 *)out;
	u32 b0[4], b1[4];
	const u32 *kp = ctx->key_enc + 4;
	const int key_len = ctx->key_length;

	b0[0] = FUNC4(src[0]) ^ ctx->key_enc[0];
	b0[1] = FUNC4(src[1]) ^ ctx->key_enc[1];
	b0[2] = FUNC4(src[2]) ^ ctx->key_enc[2];
	b0[3] = FUNC4(src[3]) ^ ctx->key_enc[3];

	if (key_len > 24) {
		FUNC3(b1, b0, kp);
		FUNC3(b0, b1, kp);
	}

	if (key_len > 16) {
		FUNC3(b1, b0, kp);
		FUNC3(b0, b1, kp);
	}

	FUNC3(b1, b0, kp);
	FUNC3(b0, b1, kp);
	FUNC3(b1, b0, kp);
	FUNC3(b0, b1, kp);
	FUNC3(b1, b0, kp);
	FUNC3(b0, b1, kp);
	FUNC3(b1, b0, kp);
	FUNC3(b0, b1, kp);
	FUNC3(b1, b0, kp);
	FUNC2(b0, b1, kp);

	dst[0] = FUNC0(b0[0]);
	dst[1] = FUNC0(b0[1]);
	dst[2] = FUNC0(b0[2]);
	dst[3] = FUNC0(b0[3]);
}