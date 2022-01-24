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
struct z_stream_s {int avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/  avail_in; int /*<<< orphan*/  next_in; } ;
struct zlib_ctx {struct z_stream_s comp_stream; } ;
struct crypto_pcomp {int dummy; } ;
struct comp_request {int avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/  avail_in; int /*<<< orphan*/  next_in; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_pcomp*) ; 
 struct zlib_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct z_stream_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_pcomp *tfm,
			       struct comp_request *req)
{
	int ret;
	struct zlib_ctx *dctx = FUNC1(FUNC0(tfm));
	struct z_stream_s *stream = &dctx->comp_stream;

	FUNC2("avail_in %u, avail_out %u\n", req->avail_in, req->avail_out);
	stream->next_in = req->next_in;
	stream->avail_in = req->avail_in;
	stream->next_out = req->next_out;
	stream->avail_out = req->avail_out;

	ret = FUNC3(stream, Z_FINISH);
	if (ret != Z_STREAM_END) {
		FUNC2("zlib_deflate failed %d\n", ret);
		return -EINVAL;
	}

	ret = req->avail_out - stream->avail_out;
	FUNC2("avail_in %u, avail_out %u (consumed %u, produced %u)\n",
		 stream->avail_in, stream->avail_out,
		 req->avail_in - stream->avail_in, ret);
	req->next_in = stream->next_in;
	req->avail_in = stream->avail_in;
	req->next_out = stream->next_out;
	req->avail_out = stream->avail_out;
	return ret;
}