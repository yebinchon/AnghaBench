
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmac_ctx_t {int child; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_cipher (int ) ;
 struct vmac_ctx_t* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void vmac_exit_tfm(struct crypto_tfm *tfm)
{
 struct vmac_ctx_t *ctx = crypto_tfm_ctx(tfm);
 crypto_free_cipher(ctx->child);
}
