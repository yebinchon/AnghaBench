
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {int dummy; } ;
struct crypto_alg {int dummy; } ;



 int CRYPTO_ALG_TYPE_MASK ;

__attribute__((used)) static unsigned int crypto_shash_ctxsize(struct crypto_alg *alg, u32 type,
      u32 mask)
{
 switch (mask & CRYPTO_ALG_TYPE_MASK) {
 case 128:
  return sizeof(struct shash_desc *);
 }

 return 0;
}
