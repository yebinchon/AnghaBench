
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lzo_ctx {int lzo_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int EINVAL ;
 int LZO_E_OK ;
 struct lzo_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lzo1x_1_compress (int const*,unsigned int,int *,size_t*,int ) ;

__attribute__((used)) static int lzo_compress(struct crypto_tfm *tfm, const u8 *src,
       unsigned int slen, u8 *dst, unsigned int *dlen)
{
 struct lzo_ctx *ctx = crypto_tfm_ctx(tfm);
 size_t tmp_len = *dlen;
 int err;

 err = lzo1x_1_compress(src, slen, dst, &tmp_len, ctx->lzo_comp_mem);

 if (err != LZO_E_OK)
  return -EINVAL;

 *dlen = tmp_len;
 return 0;
}
