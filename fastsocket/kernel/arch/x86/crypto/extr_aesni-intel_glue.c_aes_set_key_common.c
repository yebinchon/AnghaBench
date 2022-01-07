
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct crypto_aes_ctx {int dummy; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct crypto_aes_ctx* aes_ctx (void*) ;
 int aesni_set_key (struct crypto_aes_ctx*,int const*,unsigned int) ;
 int crypto_aes_expand_key (struct crypto_aes_ctx*,int const*,unsigned int) ;
 int irq_fpu_usable () ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;

__attribute__((used)) static int aes_set_key_common(struct crypto_tfm *tfm, void *raw_ctx,
         const u8 *in_key, unsigned int key_len)
{
 struct crypto_aes_ctx *ctx = aes_ctx(raw_ctx);
 u32 *flags = &tfm->crt_flags;
 int err;

 if (key_len != AES_KEYSIZE_128 && key_len != AES_KEYSIZE_192 &&
     key_len != AES_KEYSIZE_256) {
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 if (!irq_fpu_usable())
  err = crypto_aes_expand_key(ctx, in_key, key_len);
 else {
  kernel_fpu_begin();
  err = aesni_set_key(ctx, in_key, key_len);
  kernel_fpu_end();
 }

 return err;
}
