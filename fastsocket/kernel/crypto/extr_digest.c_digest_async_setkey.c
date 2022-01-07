
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct digest_alg {int (* dia_setkey ) (struct crypto_tfm*,int const*,unsigned int) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {struct digest_alg cra_digest; } ;


 int CRYPTO_TFM_RES_MASK ;
 int crypto_ahash_clear_flags (struct crypto_ahash*,int ) ;
 struct crypto_tfm* crypto_ahash_tfm (struct crypto_ahash*) ;
 int stub1 (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int digest_async_setkey(struct crypto_ahash *tfm_async, const u8 *key,
   unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_ahash_tfm(tfm_async);
 struct digest_alg *dalg = &tfm->__crt_alg->cra_digest;

 crypto_ahash_clear_flags(tfm_async, CRYPTO_TFM_RES_MASK);
 return dalg->dia_setkey(tfm, key, keylen);
}
