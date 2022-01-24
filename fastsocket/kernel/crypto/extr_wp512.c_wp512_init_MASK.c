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
struct wp512_ctx {long* hash; scalar_t__* buffer; scalar_t__ bufferPos; scalar_t__ bufferBits; int /*<<< orphan*/  bitLength; } ;
struct shash_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct wp512_ctx* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc) {
	struct wp512_ctx *wctx = FUNC1(desc);
	int i;

	FUNC0(wctx->bitLength, 0, 32);
	wctx->bufferBits = wctx->bufferPos = 0;
	wctx->buffer[0] = 0;
	for (i = 0; i < 8; i++) {
		wctx->hash[i] = 0L;
	}

	return 0;
}