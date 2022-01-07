
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct cryptd_queue {int dummy; } ;
struct cryptd_aead_request_ctx {int complete; } ;
struct TYPE_2__ {int complete; } ;
struct aead_request {TYPE_1__ base; } ;
typedef int crypto_completion_t ;


 struct cryptd_aead_request_ctx* aead_request_ctx (struct aead_request*) ;
 int cryptd_enqueue_request (struct cryptd_queue*,TYPE_1__*) ;
 struct cryptd_queue* cryptd_get_queue (int ) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_aead_tfm (struct crypto_aead*) ;

__attribute__((used)) static int cryptd_aead_enqueue(struct aead_request *req,
        crypto_completion_t complete)
{
 struct cryptd_aead_request_ctx *rctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct cryptd_queue *queue = cryptd_get_queue(crypto_aead_tfm(tfm));

 rctx->complete = req->base.complete;
 req->base.complete = complete;
 return cryptd_enqueue_request(queue, &req->base);
}
