
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_shash (int ) ;
 struct shash_desc** crypto_tfm_ctx (struct crypto_tfm*) ;
 int kzfree (struct shash_desc*) ;

__attribute__((used)) static void crypto_exit_shash_ops_compat(struct crypto_tfm *tfm)
{
 struct shash_desc **descp = crypto_tfm_ctx(tfm);
 struct shash_desc *desc = *descp;

 crypto_free_shash(desc->tfm);
 kzfree(desc);
}
