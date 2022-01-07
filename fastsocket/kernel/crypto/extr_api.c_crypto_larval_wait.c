
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_larval {int alg; struct crypto_alg* adult; int completion; } ;
struct crypto_alg {int cra_flags; } ;


 int CRYPTO_ALG_TESTED ;
 int EAGAIN ;
 int EINTR ;
 int ENOENT ;
 struct crypto_alg* ERR_PTR (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ crypto_is_test_larval (struct crypto_larval*) ;
 int crypto_mod_get (struct crypto_alg*) ;
 int crypto_mod_put (int *) ;
 long wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static struct crypto_alg *crypto_larval_wait(struct crypto_alg *alg)
{
 struct crypto_larval *larval = (void *)alg;
 long timeout;

 timeout = wait_for_completion_interruptible_timeout(
  &larval->completion, 60 * HZ);

 alg = larval->adult;
 if (timeout < 0)
  alg = ERR_PTR(-EINTR);
 else if (!timeout)
  alg = ERR_PTR(-ETIMEDOUT);
 else if (!alg)
  alg = ERR_PTR(-ENOENT);
 else if (crypto_is_test_larval(larval) &&
   !(alg->cra_flags & CRYPTO_ALG_TESTED))
  alg = ERR_PTR(-EAGAIN);
 else if (!crypto_mod_get(alg))
  alg = ERR_PTR(-EAGAIN);
 crypto_mod_put(&larval->alg);

 return alg;
}
