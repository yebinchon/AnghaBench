
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int data; int complete; } ;
struct TYPE_4__ {int info; int nbytes; int dst; int src; TYPE_1__ base; } ;
struct skcipher_givcrypt_request {int giv; TYPE_2__ creq; } ;
struct crypto_ablkcipher {int dummy; } ;
struct chainiv_ctx {int lock; int iv; } ;
struct ablkcipher_request {int info; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,int ,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 struct chainiv_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_encrypt (struct ablkcipher_request*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 int memcpy (int ,int ,unsigned int) ;
 int skcipher_geniv_cipher (struct crypto_ablkcipher*) ;
 struct ablkcipher_request* skcipher_givcrypt_reqctx (struct skcipher_givcrypt_request*) ;
 struct crypto_ablkcipher* skcipher_givcrypt_reqtfm (struct skcipher_givcrypt_request*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int chainiv_givencrypt(struct skcipher_givcrypt_request *req)
{
 struct crypto_ablkcipher *geniv = skcipher_givcrypt_reqtfm(req);
 struct chainiv_ctx *ctx = crypto_ablkcipher_ctx(geniv);
 struct ablkcipher_request *subreq = skcipher_givcrypt_reqctx(req);
 unsigned int ivsize;
 int err;

 ablkcipher_request_set_tfm(subreq, skcipher_geniv_cipher(geniv));
 ablkcipher_request_set_callback(subreq, req->creq.base.flags &
      ~CRYPTO_TFM_REQ_MAY_SLEEP,
     req->creq.base.complete,
     req->creq.base.data);
 ablkcipher_request_set_crypt(subreq, req->creq.src, req->creq.dst,
         req->creq.nbytes, req->creq.info);

 spin_lock_bh(&ctx->lock);

 ivsize = crypto_ablkcipher_ivsize(geniv);

 memcpy(req->giv, ctx->iv, ivsize);
 memcpy(subreq->info, ctx->iv, ivsize);

 err = crypto_ablkcipher_encrypt(subreq);
 if (err)
  goto unlock;

 memcpy(ctx->iv, subreq->info, ivsize);

unlock:
 spin_unlock_bh(&ctx->lock);

 return err;
}
