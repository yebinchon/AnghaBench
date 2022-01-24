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
typedef  int /*<<< orphan*/  u64 ;
struct vmac_ctx {int /*<<< orphan*/ * l3key; int /*<<< orphan*/ * polytmp; scalar_t__ first_block_processed; int /*<<< orphan*/ * polykey; scalar_t__ nhkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int VMAC_NHBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  m62 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmac_ctx*) ; 

__attribute__((used)) static u64 FUNC6(unsigned char m[], unsigned int mbytes,
			u64 *tagl, struct vmac_ctx *ctx)
{
	u64 rh, rl, *mptr;
	const u64 *kptr = (u64 *)ctx->nhkey;
	int i, remaining;
	u64 ch, cl;
	u64 pkh = ctx->polykey[0];
	u64 pkl = ctx->polykey[1];

	mptr = (u64 *)m;
	i = mbytes / VMAC_NHBYTES;
	remaining = mbytes % VMAC_NHBYTES;

	if (ctx->first_block_processed) {
		ch = ctx->polytmp[0];
		cl = ctx->polytmp[1];
	} else if (i) {
		FUNC3(mptr, kptr, VMAC_NHBYTES/8, ch, cl);
		ch &= m62;
		FUNC0(ch, cl, pkh, pkl);
		mptr += (VMAC_NHBYTES/sizeof(u64));
		i--;
	} else if (remaining) {
		FUNC2(mptr, kptr, 2*((remaining+15)/16), ch, cl);
		ch &= m62;
		FUNC0(ch, cl, pkh, pkl);
		mptr += (VMAC_NHBYTES/sizeof(u64));
		goto do_l3;
	} else {/* Empty String */
		ch = pkh; cl = pkl;
		goto do_l3;
	}

	while (i--) {
		FUNC3(mptr, kptr, VMAC_NHBYTES/8, rh, rl);
		rh &= m62;
		FUNC4(ch, cl, pkh, pkl, rh, rl);
		mptr += (VMAC_NHBYTES/sizeof(u64));
	}
	if (remaining) {
		FUNC2(mptr, kptr, 2*((remaining+15)/16), rh, rl);
		rh &= m62;
		FUNC4(ch, cl, pkh, pkl, rh, rl);
	}

do_l3:
	FUNC5(ctx);
	remaining *= 8;
	return FUNC1(ch, cl, ctx->l3key[0], ctx->l3key[1], remaining);
}