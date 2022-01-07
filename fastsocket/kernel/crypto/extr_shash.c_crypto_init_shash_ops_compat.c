
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {struct crypto_shash* tfm; } ;
struct shash_alg {int digestsize; } ;
struct hash_tfm {int digestsize; int setkey; int digest; int final; int update; int init; } ;
struct crypto_tfm {int exit; struct crypto_alg* __crt_alg; struct hash_tfm crt_hash; } ;
struct crypto_shash {int dummy; } ;
struct crypto_alg {int dummy; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct shash_alg* __crypto_shash_alg (struct crypto_alg*) ;
 struct crypto_shash* crypto_create_tfm (struct crypto_alg*,int *) ;
 int crypto_exit_shash_ops_compat ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_mod_get (struct crypto_alg*) ;
 int crypto_mod_put (struct crypto_alg*) ;
 scalar_t__ crypto_shash_descsize (struct crypto_shash*) ;
 int crypto_shash_type ;
 struct shash_desc** crypto_tfm_ctx (struct crypto_tfm*) ;
 struct shash_desc* kmalloc (scalar_t__,int ) ;
 int shash_compat_digest ;
 int shash_compat_final ;
 int shash_compat_init ;
 int shash_compat_setkey ;
 int shash_compat_update ;

__attribute__((used)) static int crypto_init_shash_ops_compat(struct crypto_tfm *tfm)
{
 struct hash_tfm *crt = &tfm->crt_hash;
 struct crypto_alg *calg = tfm->__crt_alg;
 struct shash_alg *alg = __crypto_shash_alg(calg);
 struct shash_desc **descp = crypto_tfm_ctx(tfm);
 struct crypto_shash *shash;
 struct shash_desc *desc;

 if (!crypto_mod_get(calg))
  return -EAGAIN;

 shash = crypto_create_tfm(calg, &crypto_shash_type);
 if (IS_ERR(shash)) {
  crypto_mod_put(calg);
  return PTR_ERR(shash);
 }

 desc = kmalloc(sizeof(*desc) + crypto_shash_descsize(shash),
         GFP_KERNEL);
 if (!desc) {
  crypto_free_shash(shash);
  return -ENOMEM;
 }

 *descp = desc;
 desc->tfm = shash;
 tfm->exit = crypto_exit_shash_ops_compat;

 crt->init = shash_compat_init;
 crt->update = shash_compat_update;
 crt->final = shash_compat_final;
 crt->digest = shash_compat_digest;
 crt->setkey = shash_compat_setkey;

 crt->digestsize = alg->digestsize;

 return 0;
}
