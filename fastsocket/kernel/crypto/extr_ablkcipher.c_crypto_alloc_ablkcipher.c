
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_tfm {int dummy; } ;
typedef struct crypto_tfm crypto_alg ;
struct crypto_ablkcipher {int dummy; } ;


 int EAGAIN ;
 int EINTR ;
 struct crypto_ablkcipher* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct crypto_tfm*) ;
 int PTR_ERR (struct crypto_tfm*) ;
 struct crypto_ablkcipher* __crypto_ablkcipher_cast (struct crypto_tfm*) ;
 struct crypto_tfm* __crypto_alloc_tfm (struct crypto_tfm*,int ,int ) ;
 struct crypto_tfm* crypto_lookup_skcipher (char const*,int ,int ) ;
 int crypto_mod_put (struct crypto_tfm*) ;
 int crypto_skcipher_mask (int ) ;
 int crypto_skcipher_type (int ) ;
 int current ;
 scalar_t__ signal_pending (int ) ;

struct crypto_ablkcipher *crypto_alloc_ablkcipher(const char *alg_name,
        u32 type, u32 mask)
{
 struct crypto_tfm *tfm;
 int err;

 type = crypto_skcipher_type(type);
 mask = crypto_skcipher_mask(mask);

 for (;;) {
  struct crypto_alg *alg;

  alg = crypto_lookup_skcipher(alg_name, type, mask);
  if (IS_ERR(alg)) {
   err = PTR_ERR(alg);
   goto err;
  }

  tfm = __crypto_alloc_tfm(alg, type, mask);
  if (!IS_ERR(tfm))
   return __crypto_ablkcipher_cast(tfm);

  crypto_mod_put(alg);
  err = PTR_ERR(tfm);

err:
  if (err != -EAGAIN)
   break;
  if (signal_pending(current)) {
   err = -EINTR;
   break;
  }
 }

 return ERR_PTR(err);
}
