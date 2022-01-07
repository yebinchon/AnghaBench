
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int workspace; } ;
struct deflate_ctx {struct z_stream_s comp_stream; } ;


 int DEFLATE_DEF_LEVEL ;
 int DEFLATE_DEF_MEMLEVEL ;
 int DEFLATE_DEF_WINBITS ;
 int EINVAL ;
 int ENOMEM ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_OK ;
 int memset (int ,int ,int ) ;
 int vfree (int ) ;
 int vmalloc (int ) ;
 int zlib_deflateInit2 (struct z_stream_s*,int ,int ,int ,int ,int ) ;
 int zlib_deflate_workspacesize () ;

__attribute__((used)) static int deflate_comp_init(struct deflate_ctx *ctx)
{
 int ret = 0;
 struct z_stream_s *stream = &ctx->comp_stream;

 stream->workspace = vmalloc(zlib_deflate_workspacesize());
 if (!stream->workspace ) {
  ret = -ENOMEM;
  goto out;
 }
 memset(stream->workspace, 0, zlib_deflate_workspacesize());
 ret = zlib_deflateInit2(stream, DEFLATE_DEF_LEVEL, Z_DEFLATED,
                         -DEFLATE_DEF_WINBITS, DEFLATE_DEF_MEMLEVEL,
                         Z_DEFAULT_STRATEGY);
 if (ret != Z_OK) {
  ret = -EINVAL;
  goto out_free;
 }
out:
 return ret;
out_free:
 vfree(stream->workspace);
 goto out;
}
