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
struct shash_desc {int dummy; } ;
struct michael_mic_desc_ctx {int pending_len; int /*<<< orphan*/ * pending; int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct michael_mic_desc_ctx* FUNC3 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc, const u8 *data,
			   unsigned int len)
{
	struct michael_mic_desc_ctx *mctx = FUNC3(desc);
	const __le32 *src;

	if (mctx->pending_len) {
		int flen = 4 - mctx->pending_len;
		if (flen > len)
			flen = len;
		FUNC1(&mctx->pending[mctx->pending_len], data, flen);
		mctx->pending_len += flen;
		data += flen;
		len -= flen;

		if (mctx->pending_len < 4)
			return 0;

		src = (const __le32 *)mctx->pending;
		mctx->l ^= FUNC0(src);
		FUNC2(mctx->l, mctx->r);
		mctx->pending_len = 0;
	}

	src = (const __le32 *)data;

	while (len >= 4) {
		mctx->l ^= FUNC0(src++);
		FUNC2(mctx->l, mctx->r);
		len -= 4;
	}

	if (len > 0) {
		mctx->pending_len = len;
		FUNC1(mctx->pending, src, len);
	}

	return 0;
}