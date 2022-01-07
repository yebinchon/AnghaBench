
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rfc3686_ctx {int nonce; struct crypto_ablkcipher* child; } ;
struct crypto_ablkcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 int crypto_ablkcipher_clear_flags (struct crypto_ablkcipher*,int) ;
 struct crypto_rfc3686_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_get_flags (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int) ;
 int crypto_ablkcipher_setkey (struct crypto_ablkcipher*,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int crypto_rfc3686_setkey(struct crypto_ablkcipher *parent,
     const u8 *key, unsigned int keylen)
{
 struct crypto_rfc3686_ctx *ctx = crypto_ablkcipher_ctx(parent);
 struct crypto_ablkcipher *child = ctx->child;
 int err;


 if (keylen < CTR_RFC3686_NONCE_SIZE)
  return -EINVAL;

 memcpy(ctx->nonce, key + (keylen - CTR_RFC3686_NONCE_SIZE),
        CTR_RFC3686_NONCE_SIZE);

 keylen -= CTR_RFC3686_NONCE_SIZE;

 crypto_ablkcipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_ablkcipher_set_flags(child, crypto_ablkcipher_get_flags(parent) &
        CRYPTO_TFM_REQ_MASK);
 err = crypto_ablkcipher_setkey(child, key, keylen);
 crypto_ablkcipher_set_flags(parent, crypto_ablkcipher_get_flags(child) &
        CRYPTO_TFM_RES_MASK);

 return err;
}
