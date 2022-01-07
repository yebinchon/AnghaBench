
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct chainiv_ctx {int lock; } ;


 int chainiv_init_common (struct crypto_tfm*) ;
 struct chainiv_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int chainiv_init(struct crypto_tfm *tfm)
{
 struct chainiv_ctx *ctx = crypto_tfm_ctx(tfm);

 spin_lock_init(&ctx->lock);

 return chainiv_init_common(tfm);
}
