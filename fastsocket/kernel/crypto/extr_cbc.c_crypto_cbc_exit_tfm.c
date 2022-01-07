
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_cbc_ctx {int child; } ;


 int crypto_free_cipher (int ) ;
 struct crypto_cbc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void crypto_cbc_exit_tfm(struct crypto_tfm *tfm)
{
 struct crypto_cbc_ctx *ctx = crypto_tfm_ctx(tfm);
 crypto_free_cipher(ctx->child);
}
