
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rng {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_rng*) ;
 int PTR_ERR (struct crypto_rng*) ;
 struct crypto_rng* crypto_alloc_rng (char*,int ,int ) ;
 struct crypto_rng* crypto_default_rng ;
 int crypto_default_rng_lock ;
 int crypto_default_rng_refcnt ;
 int crypto_free_rng (struct crypto_rng*) ;
 int crypto_rng_reset (struct crypto_rng*,int *,int ) ;
 int crypto_rng_seedsize (struct crypto_rng*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int crypto_get_default_rng(void)
{
 struct crypto_rng *rng;
 int err;

 mutex_lock(&crypto_default_rng_lock);
 if (!crypto_default_rng) {
  rng = crypto_alloc_rng("stdrng", 0, 0);
  err = PTR_ERR(rng);
  if (IS_ERR(rng))
   goto unlock;

  err = crypto_rng_reset(rng, ((void*)0), crypto_rng_seedsize(rng));
  if (err) {
   crypto_free_rng(rng);
   goto unlock;
  }

  crypto_default_rng = rng;
 }

 crypto_default_rng_refcnt++;
 err = 0;

unlock:
 mutex_unlock(&crypto_default_rng_lock);

 return err;
}
