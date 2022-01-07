
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int blk; } ;
struct s390_aes_ctx {TYPE_2__ fallback; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_3__ {char* cra_name; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_blkcipher (char const*,int ,int) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int fallback_init_blk(struct crypto_tfm *tfm)
{
 const char *name = tfm->__crt_alg->cra_name;
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);

 sctx->fallback.blk = crypto_alloc_blkcipher(name, 0,
   CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK);

 if (IS_ERR(sctx->fallback.blk)) {
  pr_err("Allocating AES fallback algorithm %s failed\n",
         name);
  return PTR_ERR(sctx->fallback.blk);
 }

 return 0;
}
