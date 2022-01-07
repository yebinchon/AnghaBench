
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_stream_s {int dummy; } ;
struct zlib_ctx {struct z_stream_s decomp_stream; } ;
struct crypto_pcomp {int dummy; } ;


 int EINVAL ;
 int Z_OK ;
 int crypto_pcomp_tfm (struct crypto_pcomp*) ;
 struct zlib_ctx* crypto_tfm_ctx (int ) ;
 int zlib_inflateReset (struct z_stream_s*) ;

__attribute__((used)) static int zlib_decompress_init(struct crypto_pcomp *tfm)
{
 int ret;
 struct zlib_ctx *dctx = crypto_tfm_ctx(crypto_pcomp_tfm(tfm));
 struct z_stream_s *stream = &dctx->decomp_stream;

 ret = zlib_inflateReset(stream);
 if (ret != Z_OK)
  return -EINVAL;

 return 0;
}
