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
struct ghash_desc_ctx {scalar_t__ bytes; int /*<<< orphan*/ * buffer; } ;
struct ghash_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  KIMD_GHASH ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ghash_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ghash_ctx *ctx, struct ghash_desc_ctx *dctx)
{
	u8 *buf = dctx->buffer;
	int ret;

	if (dctx->bytes) {
		u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

		FUNC2(pos, 0, dctx->bytes);

		ret = FUNC1(KIMD_GHASH, ctx, buf, GHASH_BLOCK_SIZE);
		FUNC0(ret != GHASH_BLOCK_SIZE);
	}

	dctx->bytes = 0;
}