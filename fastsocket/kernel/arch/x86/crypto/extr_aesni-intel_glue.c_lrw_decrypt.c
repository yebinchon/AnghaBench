
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct lrw_crypt_req {int tbuflen; int crypt_fn; int crypt_ctx; int * table_ctx; int * tbuf; } ;
struct blkcipher_desc {int flags; int tfm; } ;
struct aesni_lrw_ctx {int raw_aes_ctx; int lrw_table; } ;
typedef int buf ;
typedef int be128 ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int aes_ctx (int ) ;
 struct aesni_lrw_ctx* crypto_blkcipher_ctx (int ) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int lrw_crypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int,struct lrw_crypt_req*) ;
 int lrw_xts_decrypt_callback ;

__attribute__((used)) static int lrw_decrypt(struct blkcipher_desc *desc, struct scatterlist *dst,
         struct scatterlist *src, unsigned int nbytes)
{
 struct aesni_lrw_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 be128 buf[8];
 struct lrw_crypt_req req = {
  .tbuf = buf,
  .tbuflen = sizeof(buf),

  .table_ctx = &ctx->lrw_table,
  .crypt_ctx = aes_ctx(ctx->raw_aes_ctx),
  .crypt_fn = lrw_xts_decrypt_callback,
 };
 int ret;

 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 kernel_fpu_begin();
 ret = lrw_crypt(desc, dst, src, nbytes, &req);
 kernel_fpu_end();

 return ret;
}
