
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int workspace; } ;
struct deflate_ctx {struct z_stream_s decomp_stream; } ;


 int DEFLATE_DEF_WINBITS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int Z_OK ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int zlib_inflateInit2 (struct z_stream_s*,int ) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static int deflate_decomp_init(struct deflate_ctx *ctx)
{
 int ret = 0;
 struct z_stream_s *stream = &ctx->decomp_stream;

 stream->workspace = kzalloc(zlib_inflate_workspacesize(), GFP_KERNEL);
 if (!stream->workspace ) {
  ret = -ENOMEM;
  goto out;
 }
 ret = zlib_inflateInit2(stream, -DEFLATE_DEF_WINBITS);
 if (ret != Z_OK) {
  ret = -EINVAL;
  goto out_free;
 }
out:
 return ret;
out_free:
 kfree(stream->workspace);
 goto out;
}
