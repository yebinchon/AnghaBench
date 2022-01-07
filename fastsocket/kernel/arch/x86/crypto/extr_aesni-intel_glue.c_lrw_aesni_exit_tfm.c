
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct aesni_lrw_ctx {int lrw_table; } ;


 struct aesni_lrw_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lrw_free_table (int *) ;

__attribute__((used)) static void lrw_aesni_exit_tfm(struct crypto_tfm *tfm)
{
 struct aesni_lrw_ctx *ctx = crypto_tfm_ctx(tfm);

 lrw_free_table(&ctx->lrw_table);
}
