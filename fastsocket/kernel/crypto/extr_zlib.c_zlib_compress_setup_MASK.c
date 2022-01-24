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
struct zlib_ctx {struct z_stream_s comp_stream; } ;
struct nlattr {int dummy; } ;
struct crypto_pcomp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_MEM_LEVEL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 size_t ZLIB_COMP_LEVEL ; 
 int /*<<< orphan*/  ZLIB_COMP_MAX ; 
 size_t ZLIB_COMP_MEMLEVEL ; 
 size_t ZLIB_COMP_METHOD ; 
 size_t ZLIB_COMP_STRATEGY ; 
 size_t ZLIB_COMP_WINDOWBITS ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 int /*<<< orphan*/  Z_DEFLATED ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_pcomp*) ; 
 struct zlib_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct zlib_ctx*) ; 
 int FUNC8 (struct z_stream_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct crypto_pcomp *tfm, void *params,
			       unsigned int len)
{
	struct zlib_ctx *ctx = FUNC1(FUNC0(tfm));
	struct z_stream_s *stream = &ctx->comp_stream;
	struct nlattr *tb[ZLIB_COMP_MAX + 1];
	size_t workspacesize;
	int ret;

	ret = FUNC4(tb, ZLIB_COMP_MAX, params, len, NULL);
	if (ret)
		return ret;

	FUNC7(ctx);

	workspacesize = FUNC9();
	stream->workspace = FUNC6(workspacesize);
	if (!stream->workspace)
		return -ENOMEM;

	FUNC2(stream->workspace, 0, workspacesize);
	ret = FUNC8(stream,
				tb[ZLIB_COMP_LEVEL]
					? FUNC3(tb[ZLIB_COMP_LEVEL])
					: Z_DEFAULT_COMPRESSION,
				tb[ZLIB_COMP_METHOD]
					? FUNC3(tb[ZLIB_COMP_METHOD])
					: Z_DEFLATED,
				tb[ZLIB_COMP_WINDOWBITS]
					? FUNC3(tb[ZLIB_COMP_WINDOWBITS])
					: MAX_WBITS,
				tb[ZLIB_COMP_MEMLEVEL]
					? FUNC3(tb[ZLIB_COMP_MEMLEVEL])
					: DEF_MEM_LEVEL,
				tb[ZLIB_COMP_STRATEGY]
					? FUNC3(tb[ZLIB_COMP_STRATEGY])
					: Z_DEFAULT_STRATEGY);
	if (ret != Z_OK) {
		FUNC5(stream->workspace);
		stream->workspace = NULL;
		return -EINVAL;
	}

	return 0;
}