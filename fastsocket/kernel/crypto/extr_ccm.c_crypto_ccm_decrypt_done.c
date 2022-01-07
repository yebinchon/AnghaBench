
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ccm_req_priv_ctx {int odata; int auth_tag; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; int dst; } ;


 int EBADMSG ;
 int aead_request_complete (struct aead_request*,int) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ccm_auth (struct aead_request*,int ,unsigned int) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 scalar_t__ memcmp (int ,int ,unsigned int) ;

__attribute__((used)) static void crypto_ccm_decrypt_done(struct crypto_async_request *areq,
       int err)
{
 struct aead_request *req = areq->data;
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 unsigned int authsize = crypto_aead_authsize(aead);
 unsigned int cryptlen = req->cryptlen - authsize;

 if (!err) {
  err = crypto_ccm_auth(req, req->dst, cryptlen);
  if (!err && memcmp(pctx->auth_tag, pctx->odata, authsize))
   err = -EBADMSG;
 }
 aead_request_complete(req, err);
}
