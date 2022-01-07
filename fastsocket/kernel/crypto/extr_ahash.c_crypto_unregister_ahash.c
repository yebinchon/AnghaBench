
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct ahash_alg {TYPE_1__ halg; } ;


 int crypto_unregister_alg (int *) ;

int crypto_unregister_ahash(struct ahash_alg *alg)
{
 return crypto_unregister_alg(&alg->halg.base);
}
