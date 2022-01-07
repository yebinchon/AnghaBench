
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {scalar_t__ __crt_alg; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct crypto_cbc_ctx {struct crypto_cipher* child; } ;


 scalar_t__ IS_ERR (struct crypto_cipher*) ;
 int PTR_ERR (struct crypto_cipher*) ;
 struct crypto_spawn* crypto_instance_ctx (struct crypto_instance*) ;
 struct crypto_cipher* crypto_spawn_cipher (struct crypto_spawn*) ;
 struct crypto_cbc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crypto_cbc_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_instance *inst = (void *)tfm->__crt_alg;
 struct crypto_spawn *spawn = crypto_instance_ctx(inst);
 struct crypto_cbc_ctx *ctx = crypto_tfm_ctx(tfm);
 struct crypto_cipher *cipher;

 cipher = crypto_spawn_cipher(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->child = cipher;
 return 0;
}
