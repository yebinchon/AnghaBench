
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct s390_aes_ctx {unsigned int key_len; int key; } ;
struct crypto_tfm {int crt_flags; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int need_fallback (unsigned int) ;
 int setkey_fallback_cip (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int aes_set_key(struct crypto_tfm *tfm, const u8 *in_key,
         unsigned int key_len)
{
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;
 int ret;

 ret = need_fallback(key_len);
 if (ret < 0) {
  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 sctx->key_len = key_len;
 if (!ret) {
  memcpy(sctx->key, in_key, key_len);
  return 0;
 }

 return setkey_fallback_cip(tfm, in_key, key_len);
}
