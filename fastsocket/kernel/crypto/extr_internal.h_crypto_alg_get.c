
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct crypto_alg *crypto_alg_get(struct crypto_alg *alg)
{
 atomic_inc(&alg->cra_refcnt);
 return alg;
}
