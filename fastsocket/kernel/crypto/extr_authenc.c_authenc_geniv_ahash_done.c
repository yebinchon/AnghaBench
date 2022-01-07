
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_authenc_ctx {scalar_t__ reqoff; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int cryptlen; int sg; scalar_t__ tail; } ;
struct ahash_request {int result; } ;
struct aead_request {int dummy; } ;


 int aead_request_complete (struct aead_request*,int) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int scatterwalk_map_and_copy (int ,int ,int ,int ,int) ;

__attribute__((used)) static void authenc_geniv_ahash_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);

 if (err)
  goto out;

 scatterwalk_map_and_copy(ahreq->result, areq_ctx->sg,
     areq_ctx->cryptlen,
     crypto_aead_authsize(authenc), 1);

out:
 aead_request_complete(req, err);
}
