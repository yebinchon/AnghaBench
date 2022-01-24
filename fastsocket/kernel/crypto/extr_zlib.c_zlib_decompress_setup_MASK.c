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
struct z_stream_s {int /*<<< orphan*/ * workspace; } ;
struct zlib_ctx {int /*<<< orphan*/  decomp_windowBits; struct z_stream_s decomp_stream; } ;
struct nlattr {int dummy; } ;
struct crypto_pcomp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_WBITS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ZLIB_DECOMP_MAX ; 
 size_t ZLIB_DECOMP_WINDOWBITS ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_pcomp*) ; 
 struct zlib_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zlib_ctx*) ; 
 int FUNC7 (struct z_stream_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct crypto_pcomp *tfm, void *params,
				 unsigned int len)
{
	struct zlib_ctx *ctx = FUNC1(FUNC0(tfm));
	struct z_stream_s *stream = &ctx->decomp_stream;
	struct nlattr *tb[ZLIB_DECOMP_MAX + 1];
	int ret = 0;

	ret = FUNC5(tb, ZLIB_DECOMP_MAX, params, len, NULL);
	if (ret)
		return ret;

	FUNC6(ctx);

	ctx->decomp_windowBits = tb[ZLIB_DECOMP_WINDOWBITS]
				 ? FUNC4(tb[ZLIB_DECOMP_WINDOWBITS])
				 : DEF_WBITS;

	stream->workspace = FUNC3(FUNC8(), GFP_KERNEL);
	if (!stream->workspace)
		return -ENOMEM;

	ret = FUNC7(stream, ctx->decomp_windowBits);
	if (ret != Z_OK) {
		FUNC2(stream->workspace);
		stream->workspace = NULL;
		return -EINVAL;
	}

	return 0;
}