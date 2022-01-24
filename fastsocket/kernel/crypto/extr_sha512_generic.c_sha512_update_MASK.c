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
struct sha512_state {int* count; int /*<<< orphan*/  const* buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct sha512_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int
FUNC3(struct shash_desc *desc, const u8 *data, unsigned int len)
{
	struct sha512_state *sctx = FUNC2(desc);

	unsigned int i, index, part_len;

	/* Compute number of bytes mod 128 */
	index = sctx->count[0] & 0x7f;

	/* Update number of bytes */
	if ((sctx->count[0] += len) < len)
		sctx->count[1]++;

        part_len = 128 - index;

	/* Transform as many times as possible. */
	if (len >= part_len) {
		FUNC0(&sctx->buf[index], data, part_len);
		FUNC1(sctx->state, sctx->buf);

		for (i = part_len; i + 127 < len; i+=128)
			FUNC1(sctx->state, &data[i]);

		index = 0;
	} else {
		i = 0;
	}

	/* Buffer remaining input */
	FUNC0(&sctx->buf[index], &data[i], len - i);

	return 0;
}