
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_aes_ctx {unsigned int key_len; int dec; int enc; } ;
struct crypto_tfm {int dummy; } ;


 int KM_AES_128_DECRYPT ;
 int KM_AES_128_ENCRYPT ;
 int KM_AES_192_DECRYPT ;
 int KM_AES_192_ENCRYPT ;
 int KM_AES_256_DECRYPT ;
 int KM_AES_256_ENCRYPT ;
 int aes_set_key (struct crypto_tfm*,int const*,unsigned int) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int need_fallback (unsigned int) ;
 int setkey_fallback_blk (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int ecb_aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
      unsigned int key_len)
{
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);
 int ret;

 ret = need_fallback(key_len);
 if (ret > 0) {
  sctx->key_len = key_len;
  return setkey_fallback_blk(tfm, in_key, key_len);
 }

 switch (key_len) {
 case 16:
  sctx->enc = KM_AES_128_ENCRYPT;
  sctx->dec = KM_AES_128_DECRYPT;
  break;
 case 24:
  sctx->enc = KM_AES_192_ENCRYPT;
  sctx->dec = KM_AES_192_DECRYPT;
  break;
 case 32:
  sctx->enc = KM_AES_256_ENCRYPT;
  sctx->dec = KM_AES_256_DECRYPT;
  break;
 }

 return aes_set_key(tfm, in_key, key_len);
}
