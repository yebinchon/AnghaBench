
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct async_chainiv_ctx {int postponed; int queue; int lock; } ;


 int INIT_WORK (int *,int ) ;
 int async_chainiv_do_postponed ;
 int chainiv_init_common (struct crypto_tfm*) ;
 int crypto_init_queue (int *,int) ;
 struct async_chainiv_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int async_chainiv_init(struct crypto_tfm *tfm)
{
 struct async_chainiv_ctx *ctx = crypto_tfm_ctx(tfm);

 spin_lock_init(&ctx->lock);

 crypto_init_queue(&ctx->queue, 100);
 INIT_WORK(&ctx->postponed, async_chainiv_do_postponed);

 return chainiv_init_common(tfm);
}
