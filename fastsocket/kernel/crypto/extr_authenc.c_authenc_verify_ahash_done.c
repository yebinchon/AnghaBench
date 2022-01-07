
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_authenc_ctx {int enc; scalar_t__ reqoff; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int cryptlen; int sg; scalar_t__ tail; } ;
struct ahash_request {int * result; } ;
struct TYPE_2__ {int data; int complete; } ;
struct aead_request {int iv; int cryptlen; int dst; int src; TYPE_1__ base; } ;
struct ablkcipher_request {int dummy; } ;


 int EBADMSG ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,int ,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 void* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int authenc_request_complete (struct aead_request*,int) ;
 int crypto_ablkcipher_decrypt (struct ablkcipher_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 scalar_t__ memcmp (int *,int *,unsigned int) ;
 int scatterwalk_map_and_copy (int *,int ,int ,unsigned int,int ) ;

__attribute__((used)) static void authenc_verify_ahash_done(struct crypto_async_request *areq,
          int err)
{
 u8 *ihash;
 unsigned int authsize;
 struct ablkcipher_request *abreq;
 struct aead_request *req = areq->data;
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

 if (err)
  goto out;

 authsize = crypto_aead_authsize(authenc);
 ihash = ahreq->result + authsize;
 scatterwalk_map_and_copy(ihash, areq_ctx->sg, areq_ctx->cryptlen,
     authsize, 0);

 err = memcmp(ihash, ahreq->result, authsize) ? -EBADMSG: 0;
 if (err)
  goto out;

 abreq = aead_request_ctx(req);
 ablkcipher_request_set_tfm(abreq, ctx->enc);
 ablkcipher_request_set_callback(abreq, aead_request_flags(req),
     req->base.complete, req->base.data);
 ablkcipher_request_set_crypt(abreq, req->src, req->dst,
         req->cryptlen, req->iv);

 err = crypto_ablkcipher_decrypt(abreq);

out:
 authenc_request_complete(req, err);
}
