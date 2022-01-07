
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct cryptd_aead_ctx {int child; } ;


 int crypto_free_aead (int ) ;
 struct cryptd_aead_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void cryptd_aead_exit_tfm(struct crypto_tfm *tfm)
{
 struct cryptd_aead_ctx *ctx = crypto_tfm_ctx(tfm);
 crypto_free_aead(ctx->child);
}
