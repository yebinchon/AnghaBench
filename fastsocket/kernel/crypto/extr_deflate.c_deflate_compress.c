
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z_stream_s {unsigned int avail_in; unsigned int avail_out; unsigned int total_out; int * next_out; int * next_in; } ;
struct deflate_ctx {struct z_stream_s comp_stream; } ;
struct crypto_tfm {int dummy; } ;


 int EINVAL ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 struct deflate_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int zlib_deflate (struct z_stream_s*,int ) ;
 int zlib_deflateReset (struct z_stream_s*) ;

__attribute__((used)) static int deflate_compress(struct crypto_tfm *tfm, const u8 *src,
       unsigned int slen, u8 *dst, unsigned int *dlen)
{
 int ret = 0;
 struct deflate_ctx *dctx = crypto_tfm_ctx(tfm);
 struct z_stream_s *stream = &dctx->comp_stream;

 ret = zlib_deflateReset(stream);
 if (ret != Z_OK) {
  ret = -EINVAL;
  goto out;
 }

 stream->next_in = (u8 *)src;
 stream->avail_in = slen;
 stream->next_out = (u8 *)dst;
 stream->avail_out = *dlen;

 ret = zlib_deflate(stream, Z_FINISH);
 if (ret != Z_STREAM_END) {
  ret = -EINVAL;
  goto out;
 }
 ret = 0;
 *dlen = stream->total_out;
out:
 return ret;
}
