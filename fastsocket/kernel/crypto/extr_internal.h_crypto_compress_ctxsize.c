
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {unsigned int cra_ctxsize; } ;



__attribute__((used)) static inline unsigned int crypto_compress_ctxsize(struct crypto_alg *alg)
{
 return alg->cra_ctxsize;
}
