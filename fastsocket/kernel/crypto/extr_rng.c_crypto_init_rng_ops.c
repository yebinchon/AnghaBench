
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rng_tfm {int rng_reset; int rng_gen_random; } ;
struct rng_alg {int rng_make_random; } ;
struct crypto_tfm {struct rng_tfm crt_rng; TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {struct rng_alg cra_rng; } ;


 int rngapi_reset ;

__attribute__((used)) static int crypto_init_rng_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 struct rng_alg *alg = &tfm->__crt_alg->cra_rng;
 struct rng_tfm *ops = &tfm->crt_rng;

 ops->rng_gen_random = alg->rng_make_random;
 ops->rng_reset = rngapi_reset;

 return 0;
}
