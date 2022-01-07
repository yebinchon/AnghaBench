
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct async_chainiv_ctx {int err; int state; int lock; int queue; } ;


 int CHAINIV_STATE_INUSE ;
 int async_chainiv_schedule_work (struct async_chainiv_ctx*) ;
 struct async_chainiv_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int skcipher_enqueue_givcrypt (int *,struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int async_chainiv_postpone_request(struct skcipher_givcrypt_request *req)
{
 struct crypto_ablkcipher *geniv = skcipher_givcrypt_reqtfm(req);
 struct async_chainiv_ctx *ctx = crypto_ablkcipher_ctx(geniv);
 int err;

 spin_lock_bh(&ctx->lock);
 err = skcipher_enqueue_givcrypt(&ctx->queue, req);
 spin_unlock_bh(&ctx->lock);

 if (test_and_set_bit(CHAINIV_STATE_INUSE, &ctx->state))
  return err;

 ctx->err = err;
 return async_chainiv_schedule_work(ctx);
}
