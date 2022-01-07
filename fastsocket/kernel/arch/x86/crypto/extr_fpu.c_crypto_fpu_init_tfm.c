
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_instance {int dummy; } ;
struct crypto_fpu_ctx {struct crypto_blkcipher* child; } ;
struct crypto_blkcipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_blkcipher*) ;
 int PTR_ERR (struct crypto_blkcipher*) ;
 struct crypto_spawn* crypto_instance_ctx (struct crypto_instance*) ;
 struct crypto_blkcipher* crypto_spawn_blkcipher (struct crypto_spawn*) ;
 struct crypto_instance* crypto_tfm_alg_instance (struct crypto_tfm*) ;
 struct crypto_fpu_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crypto_fpu_init_tfm(struct crypto_tfm *tfm)
{
 struct crypto_instance *inst = crypto_tfm_alg_instance(tfm);
 struct crypto_spawn *spawn = crypto_instance_ctx(inst);
 struct crypto_fpu_ctx *ctx = crypto_tfm_ctx(tfm);
 struct crypto_blkcipher *cipher;

 cipher = crypto_spawn_blkcipher(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->child = cipher;
 return 0;
}
