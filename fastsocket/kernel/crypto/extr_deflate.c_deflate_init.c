
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct deflate_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int deflate_comp_exit (struct deflate_ctx*) ;
 int deflate_comp_init (struct deflate_ctx*) ;
 int deflate_decomp_init (struct deflate_ctx*) ;

__attribute__((used)) static int deflate_init(struct crypto_tfm *tfm)
{
 struct deflate_ctx *ctx = crypto_tfm_ctx(tfm);
 int ret;

 ret = deflate_comp_init(ctx);
 if (ret)
  goto out;
 ret = deflate_decomp_init(ctx);
 if (ret)
  deflate_comp_exit(ctx);
out:
 return ret;
}
