
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {int crt_flags; TYPE_1__* __crt_alg; } ;
struct cipher_alg {unsigned int cia_min_keysize; unsigned int cia_max_keysize; int (* cia_setkey ) (struct crypto_tfm*,int const*,unsigned int) ;} ;
struct TYPE_2__ {struct cipher_alg cra_cipher; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 int setkey_unaligned (struct crypto_tfm*,int const*,unsigned int) ;
 int stub1 (struct crypto_tfm*,int const*,unsigned int) ;

__attribute__((used)) static int setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int keylen)
{
 struct cipher_alg *cia = &tfm->__crt_alg->cra_cipher;
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);

 tfm->crt_flags &= ~CRYPTO_TFM_RES_MASK;
 if (keylen < cia->cia_min_keysize || keylen > cia->cia_max_keysize) {
  tfm->crt_flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }

 if ((unsigned long)key & alignmask)
  return setkey_unaligned(tfm, key, keylen);

 return cia->cia_setkey(tfm, key, keylen);
}
