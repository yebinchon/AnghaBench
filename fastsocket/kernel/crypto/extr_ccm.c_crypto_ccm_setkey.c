
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_cipher {int dummy; } ;
struct crypto_ccm_ctx {struct crypto_cipher* cipher; struct crypto_ablkcipher* ctr; } ;
struct crypto_aead {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 int crypto_ablkcipher_clear_flags (struct crypto_ablkcipher*,int) ;
 int crypto_ablkcipher_get_flags (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int) ;
 int crypto_ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 int crypto_cipher_clear_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_get_flags (struct crypto_cipher*) ;
 int crypto_cipher_set_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,unsigned int) ;

__attribute__((used)) static int crypto_ccm_setkey(struct crypto_aead *aead, const u8 *key,
        unsigned int keylen)
{
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_ablkcipher *ctr = ctx->ctr;
 struct crypto_cipher *tfm = ctx->cipher;
 int err = 0;

 crypto_ablkcipher_clear_flags(ctr, CRYPTO_TFM_REQ_MASK);
 crypto_ablkcipher_set_flags(ctr, crypto_aead_get_flags(aead) &
        CRYPTO_TFM_REQ_MASK);
 err = crypto_ablkcipher_setkey(ctr, key, keylen);
 crypto_aead_set_flags(aead, crypto_ablkcipher_get_flags(ctr) &
         CRYPTO_TFM_RES_MASK);
 if (err)
  goto out;

 crypto_cipher_clear_flags(tfm, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(tfm, crypto_aead_get_flags(aead) &
        CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(tfm, key, keylen);
 crypto_aead_set_flags(aead, crypto_cipher_get_flags(tfm) &
         CRYPTO_TFM_RES_MASK);

out:
 return err;
}
