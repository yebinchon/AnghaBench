
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ivsize; } ;
struct TYPE_3__ {int ivsize; } ;
struct crypto_alg {int cra_flags; TYPE_2__ cra_ablkcipher; TYPE_1__ cra_blkcipher; } ;


 int BUG_ON (int) ;
 int CRYPTO_ALG_TESTED ;
 int CRYPTO_ALG_TYPE_BLKCIPHER ;
 int CRYPTO_ALG_TYPE_GIVCIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int ENOENT ;
 struct crypto_alg* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct crypto_alg*) ;
 struct crypto_alg* crypto_alg_mod_lookup (char const*,int,int) ;
 int crypto_givcipher_default (struct crypto_alg*,int,int) ;
 int crypto_mod_put (struct crypto_alg*) ;

__attribute__((used)) static struct crypto_alg *crypto_lookup_skcipher(const char *name, u32 type,
       u32 mask)
{
 struct crypto_alg *alg;

 alg = crypto_alg_mod_lookup(name, type, mask);
 if (IS_ERR(alg))
  return alg;

 if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
     CRYPTO_ALG_TYPE_GIVCIPHER)
  return alg;

 if (!((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
       CRYPTO_ALG_TYPE_BLKCIPHER ? alg->cra_blkcipher.ivsize :
       alg->cra_ablkcipher.ivsize))
  return alg;

 crypto_mod_put(alg);
 alg = crypto_alg_mod_lookup(name, type | CRYPTO_ALG_TESTED,
        mask & ~CRYPTO_ALG_TESTED);
 if (IS_ERR(alg))
  return alg;

 if ((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
     CRYPTO_ALG_TYPE_GIVCIPHER) {
  if ((alg->cra_flags ^ type ^ ~mask) & CRYPTO_ALG_TESTED) {
   crypto_mod_put(alg);
   alg = ERR_PTR(-ENOENT);
  }
  return alg;
 }

 BUG_ON(!((alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
   CRYPTO_ALG_TYPE_BLKCIPHER ? alg->cra_blkcipher.ivsize :
          alg->cra_ablkcipher.ivsize));

 return ERR_PTR(crypto_givcipher_default(alg, type, mask));
}
