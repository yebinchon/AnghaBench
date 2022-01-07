
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv_ctx {unsigned int key_len; int need_calc_aes_dkey; int aes_enc_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;





 int AES_KEY_LEN ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct mv_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static int mv_setkey_aes(struct crypto_ablkcipher *cipher, const u8 *key,
  unsigned int len)
{
 struct crypto_tfm *tfm = crypto_ablkcipher_tfm(cipher);
 struct mv_ctx *ctx = crypto_tfm_ctx(tfm);

 switch (len) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 ctx->key_len = len;
 ctx->need_calc_aes_dkey = 1;

 memcpy(ctx->aes_enc_key, key, AES_KEY_LEN);
 return 0;
}
