
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des_ctx {int expkey; } ;
struct crypto_tfm {int crt_flags; } ;


 int CRYPTO_TFM_REQ_WEAK_KEY ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int DES_EXPKEY_WORDS ;
 int EINVAL ;
 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des_ekey (int*,int const*) ;
 int memcpy (int ,int*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int des_setkey(struct crypto_tfm *tfm, const u8 *key,
        unsigned int keylen)
{
 struct des_ctx *dctx = crypto_tfm_ctx(tfm);
 u32 *flags = &tfm->crt_flags;
 u32 tmp[DES_EXPKEY_WORDS];
 int ret;


 ret = des_ekey(tmp, key);

 if (unlikely(ret == 0) && (*flags & CRYPTO_TFM_REQ_WEAK_KEY)) {
  *flags |= CRYPTO_TFM_RES_WEAK_KEY;
  return -EINVAL;
 }


 memcpy(dctx->expkey, tmp, sizeof(dctx->expkey));

 return 0;
}
