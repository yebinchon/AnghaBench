
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_authenc_ctx {scalar_t__ reqoff; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int cryptlen; int sg; int complete; scalar_t__ tail; } ;
struct ahash_request {int result; } ;
struct aead_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int ahash_request_set_callback (struct ahash_request*,int,int ,struct aead_request*) ;
 int ahash_request_set_crypt (struct ahash_request*,int ,int ,int ) ;
 int authenc_request_complete (struct aead_request*,int) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_finup (struct ahash_request*) ;
 int scatterwalk_map_and_copy (int ,int ,int ,int ,int) ;

__attribute__((used)) static void authenc_geniv_ahash_update_done(struct crypto_async_request *areq,
         int err)
{
 struct aead_request *req = areq->data;
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

 if (err)
  goto out;

 ahash_request_set_crypt(ahreq, areq_ctx->sg, ahreq->result,
    areq_ctx->cryptlen);
 ahash_request_set_callback(ahreq, aead_request_flags(req) &
       CRYPTO_TFM_REQ_MAY_SLEEP,
       areq_ctx->complete, req);

 err = crypto_ahash_finup(ahreq);
 if (err)
  goto out;

 scatterwalk_map_and_copy(ahreq->result, areq_ctx->sg,
     areq_ctx->cryptlen,
     crypto_aead_authsize(authenc), 1);

out:
 authenc_request_complete(req, err);
}
