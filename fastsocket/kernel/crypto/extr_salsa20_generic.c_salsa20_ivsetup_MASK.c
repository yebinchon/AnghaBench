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
struct salsa20_ctx {void** input; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC1(struct salsa20_ctx *ctx, const u8 *iv)
{
	ctx->input[6] = FUNC0(iv + 0);
	ctx->input[7] = FUNC0(iv + 4);
	ctx->input[8] = 0;
	ctx->input[9] = 0;
}