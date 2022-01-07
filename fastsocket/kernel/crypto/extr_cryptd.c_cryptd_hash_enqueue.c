
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_ahash {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_hash_request_ctx {int complete; } ;
struct TYPE_2__ {int complete; } ;
struct ahash_request {TYPE_1__ base; } ;
typedef int crypto_completion_t ;


 struct cryptd_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int cryptd_enqueue_request (struct cryptd_queue*,TYPE_1__*) ;
 struct cryptd_queue* cryptd_get_queue (int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;

__attribute__((used)) static int cryptd_hash_enqueue(struct ahash_request *req,
    crypto_completion_t complete)
{
 struct cryptd_hash_request_ctx *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cryptd_queue *queue =
  cryptd_get_queue(crypto_ahash_tfm(tfm));

 rctx->complete = req->base.complete;
 req->base.complete = complete;

 return cryptd_enqueue_request(queue, &req->base);
}
