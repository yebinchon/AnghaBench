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
struct des3_ede_ctx {int /*<<< orphan*/ * expkey; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int DES3_EDE_EXPKEY_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct des3_ede_ctx* FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC6(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
	struct des3_ede_ctx *dctx = FUNC4(tfm);
	const u32 *K = dctx->expkey + DES3_EDE_EXPKEY_WORDS - 2;
	const __le32 *s = (const __le32 *)src;
	__le32 *d = (__le32 *)dst;
	u32 L, R, A, B;
	int i;

	L = FUNC5(s[0]);
	R = FUNC5(s[1]);

	FUNC1(L, R, A);
	for (i = 0; i < 8; i++) {
		FUNC2(L, R, A, B, K, -2);
		FUNC2(R, L, A, B, K, -2);
	}
	for (i = 0; i < 8; i++) {
		FUNC2(R, L, A, B, K, -2);
		FUNC2(L, R, A, B, K, -2);
	}
	for (i = 0; i < 8; i++) {
		FUNC2(L, R, A, B, K, -2);
		FUNC2(R, L, A, B, K, -2);
	}
	FUNC0(R, L, A);

	d[0] = FUNC3(R);
	d[1] = FUNC3(L);
}