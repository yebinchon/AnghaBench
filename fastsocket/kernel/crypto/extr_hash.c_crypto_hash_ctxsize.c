
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {unsigned int cra_ctxsize; } ;



__attribute__((used)) static unsigned int crypto_hash_ctxsize(struct crypto_alg *alg, u32 type,
     u32 mask)
{
 return alg->cra_ctxsize;
}
