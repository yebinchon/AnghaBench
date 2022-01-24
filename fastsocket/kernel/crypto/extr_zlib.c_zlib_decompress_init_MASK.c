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
struct z_stream_s {int dummy; } ;
struct zlib_ctx {struct z_stream_s decomp_stream; } ;
struct crypto_pcomp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_pcomp*) ; 
 struct zlib_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct z_stream_s*) ; 

__attribute__((used)) static int FUNC3(struct crypto_pcomp *tfm)
{
	int ret;
	struct zlib_ctx *dctx = FUNC1(FUNC0(tfm));
	struct z_stream_s *stream = &dctx->decomp_stream;

	ret = FUNC2(stream);
	if (ret != Z_OK)
		return -EINVAL;

	return 0;
}