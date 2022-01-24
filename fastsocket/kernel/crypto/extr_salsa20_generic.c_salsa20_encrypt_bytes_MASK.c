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
typedef  int /*<<< orphan*/  const u8 ;
struct salsa20_ctx {int /*<<< orphan*/ * input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct salsa20_ctx *ctx, u8 *dst,
				  const u8 *src, unsigned int bytes)
{
	u8 buf[64];

	if (dst != src)
		FUNC1(dst, src, bytes);

	while (bytes) {
		FUNC2(buf, ctx->input);

		ctx->input[8]++;
		if (!ctx->input[8])
			ctx->input[9]++;

		if (bytes <= 64) {
			FUNC0(dst, buf, bytes);
			return;
		}

		FUNC0(dst, buf, 64);
		bytes -= 64;
		dst += 64;
	}
}