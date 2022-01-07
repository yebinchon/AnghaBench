
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_3__ {int (* dia_setkey ) (struct crypto_tfm*,int const*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ cra_digest; } ;


 int CRYPTO_TFM_RES_MASK ;
 int crypto_hash_clear_flags (struct crypto_hash*,int ) ;
 struct crypto_tfm* crypto_hash_tfm (struct crypto_hash*) ;
 int stub1 (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_hash *hash, const u8 *key, unsigned int keylen)
{
 struct crypto_tfm *tfm = crypto_hash_tfm(hash);

 crypto_hash_clear_flags(hash, CRYPTO_TFM_RES_MASK);
 return tfm->__crt_alg->cra_digest.dia_setkey(tfm, key, keylen);
}
