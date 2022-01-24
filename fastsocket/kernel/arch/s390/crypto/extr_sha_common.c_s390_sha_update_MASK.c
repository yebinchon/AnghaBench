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
struct s390_sha_ctx {unsigned int count; int /*<<< orphan*/  const* buf; int /*<<< orphan*/  state; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct s390_sha_ctx* FUNC4 (struct shash_desc*) ; 

int FUNC5(struct shash_desc *desc, const u8 *data, unsigned int len)
{
	struct s390_sha_ctx *ctx = FUNC4(desc);
	unsigned int bsize = FUNC2(desc->tfm);
	unsigned int index;
	int ret;

	/* how much is already in the buffer? */
	index = ctx->count & (bsize - 1);
	ctx->count += len;

	if ((index + len) < bsize)
		goto store;

	/* process one stored block */
	if (index) {
		FUNC3(ctx->buf + index, data, bsize - index);
		ret = FUNC1(ctx->func, ctx->state, ctx->buf, bsize);
		FUNC0(ret != bsize);
		data += bsize - index;
		len -= bsize - index;
		index = 0;
	}

	/* process as many blocks as possible */
	if (len >= bsize) {
		ret = FUNC1(ctx->func, ctx->state, data,
				      len & ~(bsize - 1));
		FUNC0(ret != (len & ~(bsize - 1)));
		data += ret;
		len -= ret;
	}
store:
	if (len)
		FUNC3(ctx->buf + index , data, len);

	return 0;
}