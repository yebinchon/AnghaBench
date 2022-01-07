
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_tfm {int dummy; } ;



 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 int crypto_init_shash_ops_compat (struct crypto_tfm*) ;

__attribute__((used)) static int crypto_init_shash_ops(struct crypto_tfm *tfm, u32 type, u32 mask)
{
 switch (mask & CRYPTO_ALG_TYPE_MASK) {
 case 128:
  return crypto_init_shash_ops_compat(tfm);
 }

 return -EINVAL;
}
