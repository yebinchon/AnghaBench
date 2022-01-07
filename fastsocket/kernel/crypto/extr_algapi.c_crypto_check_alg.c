
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_alignmask; int cra_blocksize; scalar_t__ cra_priority; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_set_driver_name (struct crypto_alg*) ;

__attribute__((used)) static int crypto_check_alg(struct crypto_alg *alg)
{
 if (alg->cra_alignmask & (alg->cra_alignmask + 1))
  return -EINVAL;

 if (alg->cra_blocksize > PAGE_SIZE / 8)
  return -EINVAL;

 if (alg->cra_priority < 0)
  return -EINVAL;

 return crypto_set_driver_name(alg);
}
