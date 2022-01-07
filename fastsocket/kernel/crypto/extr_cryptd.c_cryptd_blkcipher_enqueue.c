
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_ablkcipher {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_blkcipher_request_ctx {int complete; } ;
struct TYPE_2__ {int complete; } ;
struct ablkcipher_request {TYPE_1__ base; } ;
typedef int crypto_completion_t ;


 struct cryptd_blkcipher_request_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int cryptd_enqueue_request (struct cryptd_queue*,TYPE_1__*) ;
 struct cryptd_queue* cryptd_get_queue (int ) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;

__attribute__((used)) static int cryptd_blkcipher_enqueue(struct ablkcipher_request *req,
        crypto_completion_t complete)
{
 struct cryptd_blkcipher_request_ctx *rctx = ablkcipher_request_ctx(req);
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct cryptd_queue *queue;

 queue = cryptd_get_queue(crypto_ablkcipher_tfm(tfm));
 rctx->complete = req->base.complete;
 req->base.complete = complete;

 return cryptd_enqueue_request(queue, &req->base);
}
