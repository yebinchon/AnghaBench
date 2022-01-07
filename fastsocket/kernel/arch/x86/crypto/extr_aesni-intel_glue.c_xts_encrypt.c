
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xts_crypt_req {int tbuflen; int crypt_fn; int crypt_ctx; int tweak_fn; int tweak_ctx; int * tbuf; } ;
struct scatterlist {int dummy; } ;
struct blkcipher_desc {int flags; int tfm; } ;
struct aesni_xts_ctx {int raw_crypt_ctx; int raw_tweak_ctx; } ;
typedef int buf ;
typedef int be128 ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int aes_ctx (int ) ;
 int aesni_xts_tweak ;
 struct aesni_xts_ctx* crypto_blkcipher_ctx (int ) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int lrw_xts_encrypt_callback ;
 int xts_crypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int,struct xts_crypt_req*) ;

__attribute__((used)) static int xts_encrypt(struct blkcipher_desc *desc, struct scatterlist *dst,
         struct scatterlist *src, unsigned int nbytes)
{
 struct aesni_xts_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 be128 buf[8];
 struct xts_crypt_req req = {
  .tbuf = buf,
  .tbuflen = sizeof(buf),

  .tweak_ctx = aes_ctx(ctx->raw_tweak_ctx),
  .tweak_fn = aesni_xts_tweak,
  .crypt_ctx = aes_ctx(ctx->raw_crypt_ctx),
  .crypt_fn = lrw_xts_encrypt_callback,
 };
 int ret;

 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 kernel_fpu_begin();
 ret = xts_crypt(desc, dst, src, nbytes, &req);
 kernel_fpu_end();

 return ret;
}
