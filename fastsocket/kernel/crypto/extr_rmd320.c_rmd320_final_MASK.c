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
typedef  int u8 ;
typedef  int u32 ;
struct shash_desc {int dummy; } ;
struct rmd320_ctx {int byte_count; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rmd320_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int const*,int) ; 
 struct rmd320_ctx* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, u8 *out)
{
	struct rmd320_ctx *rctx = FUNC4(desc);
	u32 i, index, padlen;
	__le64 bits;
	__le32 *dst = (__le32 *)out;
	static const u8 padding[64] = { 0x80, };

	bits = FUNC1(rctx->byte_count << 3);

	/* Pad out to 56 mod 64 */
	index = rctx->byte_count & 0x3f;
	padlen = (index < 56) ? (56 - index) : ((64+56) - index);
	FUNC3(desc, padding, padlen);

	/* Append length */
	FUNC3(desc, (const u8 *)&bits, sizeof(bits));

	/* Store state in digest */
	for (i = 0; i < 10; i++)
		dst[i] = FUNC0(&rctx->state[i]);

	/* Wipe context */
	FUNC2(rctx, 0, sizeof(*rctx));

	return 0;
}