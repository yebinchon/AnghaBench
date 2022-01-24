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
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
	const __be32 *in_blk = (const __be32 *)src;
	__be32 *const out_blk = (__be32 *)dst;
	u32 in32[2], out32[2];

	in32[0] = FUNC0(in_blk[0]);
	in32[1] = FUNC0(in_blk[1]);
	FUNC3(FUNC2(tfm), out32, in32);
	out_blk[0] = FUNC1(out32[0]);
	out_blk[1] = FUNC1(out32[1]);
}