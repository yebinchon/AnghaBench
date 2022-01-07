
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int crt_flags; } ;
struct crypt_s390_des_ctx {int key; } ;


 int crypto_des_check_key (int const*,unsigned int,int *) ;
 struct crypt_s390_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int des_setkey(struct crypto_tfm *tfm, const u8 *key,
        unsigned int keylen)
{
 struct crypt_s390_des_ctx *dctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;
 int ret;


 ret = crypto_des_check_key(key, keylen, flags);
 if (ret == 0)
  memcpy(dctx->key, key, keylen);
 return ret;
}
