
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct talitos_ctx {unsigned int keylen; int key; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_alg {unsigned int min_keysize; unsigned int max_keysize; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned int TALITOS_MAX_KEY_SIZE ;
 struct ablkcipher_alg* crypto_ablkcipher_alg (struct crypto_ablkcipher*) ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int ablkcipher_setkey(struct crypto_ablkcipher *cipher,
        const u8 *key, unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct ablkcipher_alg *alg = crypto_ablkcipher_alg(cipher);

 if (keylen > TALITOS_MAX_KEY_SIZE)
  goto badkey;

 if (keylen < alg->min_keysize || keylen > alg->max_keysize)
  goto badkey;

 memcpy(&ctx->key, key, keylen);
 ctx->keylen = keylen;

 return 0;

badkey:
 crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
