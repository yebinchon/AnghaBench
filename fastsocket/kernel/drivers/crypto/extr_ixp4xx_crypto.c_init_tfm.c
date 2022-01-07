
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp_ctx {int encrypt; int decrypt; int configuring; } ;
struct crypto_tfm {int dummy; } ;


 int atomic_set (int *,int ) ;
 struct ixp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_sa_dir (int *) ;
 int init_sa_dir (int *) ;

__attribute__((used)) static int init_tfm(struct crypto_tfm *tfm)
{
 struct ixp_ctx *ctx = crypto_tfm_ctx(tfm);
 int ret;

 atomic_set(&ctx->configuring, 0);
 ret = init_sa_dir(&ctx->encrypt);
 if (ret)
  return ret;
 ret = init_sa_dir(&ctx->decrypt);
 if (ret) {
  free_sa_dir(&ctx->encrypt);
 }
 return ret;
}
