
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct deflate_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int deflate_comp_exit (struct deflate_ctx*) ;
 int deflate_decomp_exit (struct deflate_ctx*) ;

__attribute__((used)) static void deflate_exit(struct crypto_tfm *tfm)
{
 struct deflate_ctx *ctx = crypto_tfm_ctx(tfm);

 deflate_comp_exit(ctx);
 deflate_decomp_exit(ctx);
}
