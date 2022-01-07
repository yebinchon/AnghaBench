
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct crypto_shash {int descsize; } ;
struct TYPE_2__ {int descsize; } ;


 struct crypto_shash* __crypto_shash_cast (struct crypto_tfm*) ;
 TYPE_1__* crypto_shash_alg (struct crypto_shash*) ;

__attribute__((used)) static int crypto_shash_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_shash *hash = __crypto_shash_cast(tfm);

 hash->descsize = crypto_shash_alg(hash)->descsize;
 return 0;
}
