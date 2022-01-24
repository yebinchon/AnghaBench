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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct ghash_desc_ctx {int /*<<< orphan*/ * buffer; } ;
struct ghash_ctx {int /*<<< orphan*/  gf128; } ;

/* Variables and functions */
 int ENOKEY ; 
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 struct ghash_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ghash_ctx*,struct ghash_desc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ghash_desc_ctx* FUNC3 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc, u8 *dst)
{
	struct ghash_desc_ctx *dctx = FUNC3(desc);
	struct ghash_ctx *ctx = FUNC0(desc->tfm);
	u8 *buf = dctx->buffer;

	if (!ctx->gf128)
		return -ENOKEY;

	FUNC1(ctx, dctx);
	FUNC2(dst, buf, GHASH_BLOCK_SIZE);

	return 0;
}