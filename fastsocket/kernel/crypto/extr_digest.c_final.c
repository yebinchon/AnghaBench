
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hash_desc {int tfm; } ;
struct digest_alg {int (* dia_final ) (struct crypto_tfm*,int *) ;int dia_digestsize; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {unsigned long cra_ctxsize; struct digest_alg cra_digest; } ;


 int ALIGN (unsigned long,unsigned long) ;
 struct crypto_tfm* crypto_hash_tfm (int ) ;
 unsigned long crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 scalar_t__ crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int *,int *,int ) ;
 int stub1 (struct crypto_tfm*,int *) ;
 int stub2 (struct crypto_tfm*,int *) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static int final(struct hash_desc *desc, u8 *out)
{
 struct crypto_tfm *tfm = crypto_hash_tfm(desc->tfm);
 unsigned long alignmask = crypto_tfm_alg_alignmask(tfm);
 struct digest_alg *digest = &tfm->__crt_alg->cra_digest;

 if (unlikely((unsigned long)out & alignmask)) {
  unsigned long align = alignmask + 1;
  unsigned long addr = (unsigned long)crypto_tfm_ctx(tfm);
  u8 *dst = (u8 *)ALIGN(addr, align) +
     ALIGN(tfm->__crt_alg->cra_ctxsize, align);

  digest->dia_final(tfm, dst);
  memcpy(out, dst, digest->dia_digestsize);
 } else
  digest->dia_final(tfm, out);

 return 0;
}
