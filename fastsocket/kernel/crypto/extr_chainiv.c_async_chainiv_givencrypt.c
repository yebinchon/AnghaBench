
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int complete; int flags; } ;
struct TYPE_5__ {int info; int nbytes; int dst; int src; TYPE_1__ base; } ;
struct skcipher_givcrypt_request {TYPE_2__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct async_chainiv_ctx {int state; TYPE_3__ queue; } ;
struct ablkcipher_request {int dummy; } ;


 int CHAINIV_STATE_INUSE ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,int ,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 int async_chainiv_givencrypt_tail (struct skcipher_givcrypt_request*) ;
 int async_chainiv_postpone_request (struct skcipher_givcrypt_request*) ;
 int clear_bit (int ,int *) ;
 struct async_chainiv_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int skcipher_geniv_cipher (struct crypto_ablkcipher*) ;
 struct ablkcipher_request* skcipher_givcrypt_reqctx (struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int async_chainiv_givencrypt(struct skcipher_givcrypt_request *req)
{
 struct crypto_ablkcipher *geniv = skcipher_givcrypt_reqtfm(req);
 struct async_chainiv_ctx *ctx = crypto_ablkcipher_ctx(geniv);
 struct ablkcipher_request *subreq = skcipher_givcrypt_reqctx(req);

 ablkcipher_request_set_tfm(subreq, skcipher_geniv_cipher(geniv));
 ablkcipher_request_set_callback(subreq, req->creq.base.flags,
     req->creq.base.complete,
     req->creq.base.data);
 ablkcipher_request_set_crypt(subreq, req->creq.src, req->creq.dst,
         req->creq.nbytes, req->creq.info);

 if (test_and_set_bit(CHAINIV_STATE_INUSE, &ctx->state))
  goto postpone;

 if (ctx->queue.qlen) {
  clear_bit(CHAINIV_STATE_INUSE, &ctx->state);
  goto postpone;
 }

 return async_chainiv_givencrypt_tail(req);

postpone:
 return async_chainiv_postpone_request(req);
}
