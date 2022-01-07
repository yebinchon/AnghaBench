
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_req_priv_ctx {int iauth_tag; int auth_tag; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int aead_request_complete (struct aead_request*,int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int crypto_xor (int ,int ,int) ;
 int gcm_enc_copy_hash (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ;
 int gcm_hash (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ;

__attribute__((used)) static void gcm_encrypt_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);

 if (!err) {
  err = gcm_hash(req, pctx);
  if (err == -EINPROGRESS || err == -EBUSY)
   return;
  else if (!err) {
   crypto_xor(pctx->auth_tag, pctx->iauth_tag, 16);
   gcm_enc_copy_hash(req, pctx);
  }
 }

 aead_request_complete(req, err);
}
