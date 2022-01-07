
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int inst; } ;
struct crypto_skcipher_spawn {TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_alg*) ;
 int PTR_ERR (struct crypto_alg*) ;
 int crypto_init_spawn (TYPE_1__*,struct crypto_alg*,int ,int ) ;
 struct crypto_alg* crypto_lookup_skcipher (char const*,int ,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int crypto_skcipher_mask (int ) ;
 int crypto_skcipher_type (int ) ;

int crypto_grab_skcipher(struct crypto_skcipher_spawn *spawn, const char *name,
    u32 type, u32 mask)
{
 struct crypto_alg *alg;
 int err;

 type = crypto_skcipher_type(type);
 mask = crypto_skcipher_mask(mask);

 alg = crypto_lookup_skcipher(name, type, mask);
 if (IS_ERR(alg))
  return PTR_ERR(alg);

 err = crypto_init_spawn(&spawn->base, alg, spawn->base.inst, mask);
 crypto_mod_put(alg);
 return err;
}
