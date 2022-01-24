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
struct sha256_state {int count; int /*<<< orphan*/ * buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct sha256_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
			  unsigned int len)
{
	struct sha256_state *sctx = FUNC2(desc);
	unsigned int partial, done;
	const u8 *src;

	partial = sctx->count & 0x3f;
	sctx->count += len;
	done = 0;
	src = data;

	if ((partial + len) > 63) {
		if (partial) {
			done = -partial;
			FUNC0(sctx->buf + partial, data, done + 64);
			src = sctx->buf;
		}

		do {
			FUNC1(sctx->state, src);
			done += 64;
			src = data + done;
		} while (done + 63 < len);

		partial = 0;
	}
	FUNC0(sctx->buf + partial, src, len - done);

	return 0;
}