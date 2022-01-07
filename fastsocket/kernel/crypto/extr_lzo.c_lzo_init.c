
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzo_ctx {int lzo_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int ENOMEM ;
 int LZO1X_MEM_COMPRESS ;
 struct lzo_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int vmalloc (int ) ;

__attribute__((used)) static int lzo_init(struct crypto_tfm *tfm)
{
 struct lzo_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->lzo_comp_mem = vmalloc(LZO1X_MEM_COMPRESS);
 if (!ctx->lzo_comp_mem)
  return -ENOMEM;

 return 0;
}
