
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int * workspace; } ;
struct zlib_ctx {struct z_stream_s comp_stream; } ;


 int vfree (int *) ;
 int zlib_deflateEnd (struct z_stream_s*) ;

__attribute__((used)) static void zlib_comp_exit(struct zlib_ctx *ctx)
{
 struct z_stream_s *stream = &ctx->comp_stream;

 if (stream->workspace) {
  zlib_deflateEnd(stream);
  vfree(stream->workspace);
  stream->workspace = ((void*)0);
 }
}
