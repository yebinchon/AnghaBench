
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct crypt_s390_des3_128_ctx {int key; } ;


 int CRYPTO_TFM_REQ_WEAK_KEY ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 size_t DES_KEY_SIZE ;
 int EINVAL ;
 int crypto_des_check_key (int const*,size_t,int*) ;
 struct crypt_s390_des3_128_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcmp (int const*,int const*,size_t) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int des3_128_setkey(struct crypto_tfm *tfm, const u8 *key,
      unsigned int keylen)
{
 int i, ret;
 struct crypt_s390_des3_128_ctx *dctx = crypto_tfm_ctx(tfm);
 const u8 *temp_key = key;
 u32 *flags = &tfm->crt_flags;

 if (!(memcmp(key, &key[DES_KEY_SIZE], DES_KEY_SIZE)) &&
     (*flags & CRYPTO_TFM_REQ_WEAK_KEY)) {
  *flags |= CRYPTO_TFM_RES_WEAK_KEY;
  return -EINVAL;
 }
 for (i = 0; i < 2; i++, temp_key += DES_KEY_SIZE) {
  ret = crypto_des_check_key(temp_key, DES_KEY_SIZE, flags);
  if (ret < 0)
   return ret;
 }
 memcpy(dctx->key, key, keylen);
 return 0;
}
