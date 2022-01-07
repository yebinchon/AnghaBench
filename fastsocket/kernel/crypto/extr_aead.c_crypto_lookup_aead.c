
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ivsize; } ;
struct crypto_alg {int cra_flags; TYPE_1__ cra_aead; int * cra_type; } ;


 int BUG_ON (int) ;
 int CRYPTO_ALG_TESTED ;
 int ENOENT ;
 struct crypto_alg* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct crypto_alg*) ;
 int crypto_aead_type ;
 struct crypto_alg* crypto_alg_mod_lookup (char const*,int,int) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int crypto_nivaead_default (struct crypto_alg*,int,int) ;

__attribute__((used)) static struct crypto_alg *crypto_lookup_aead(const char *name, u32 type,
          u32 mask)
{
 struct crypto_alg *alg;

 alg = crypto_alg_mod_lookup(name, type, mask);
 if (IS_ERR(alg))
  return alg;

 if (alg->cra_type == &crypto_aead_type)
  return alg;

 if (!alg->cra_aead.ivsize)
  return alg;

 crypto_mod_put(alg);
 alg = crypto_alg_mod_lookup(name, type | CRYPTO_ALG_TESTED,
        mask & ~CRYPTO_ALG_TESTED);
 if (IS_ERR(alg))
  return alg;

 if (alg->cra_type == &crypto_aead_type) {
  if ((alg->cra_flags ^ type ^ ~mask) & CRYPTO_ALG_TESTED) {
   crypto_mod_put(alg);
   alg = ERR_PTR(-ENOENT);
  }
  return alg;
 }

 BUG_ON(!alg->cra_aead.ivsize);

 return ERR_PTR(crypto_nivaead_default(alg, type, mask));
}
