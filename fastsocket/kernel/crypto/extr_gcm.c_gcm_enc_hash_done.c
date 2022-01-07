
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_req_priv_ctx {int dummy; } ;
struct aead_request {int dummy; } ;


 int aead_request_complete (struct aead_request*,int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_enc_copy_hash (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ;

__attribute__((used)) static void gcm_enc_hash_done(struct aead_request *req, int err)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);

 if (!err)
  gcm_enc_copy_hash(req, pctx);

 aead_request_complete(req, err);
}
