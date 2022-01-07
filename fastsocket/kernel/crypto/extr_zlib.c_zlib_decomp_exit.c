
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int * workspace; } ;
struct zlib_ctx {struct z_stream_s decomp_stream; } ;


 int kfree (int *) ;
 int zlib_inflateEnd (struct z_stream_s*) ;

__attribute__((used)) static void zlib_decomp_exit(struct zlib_ctx *ctx)
{
 struct z_stream_s *stream = &ctx->decomp_stream;

 if (stream->workspace) {
  zlib_inflateEnd(stream);
  kfree(stream->workspace);
  stream->workspace = ((void*)0);
 }
}
