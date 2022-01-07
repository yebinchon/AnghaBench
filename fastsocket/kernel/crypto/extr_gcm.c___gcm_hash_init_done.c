
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_req_priv_ctx {int dummy; } ;
struct aead_request {int assoclen; int assoc; } ;
typedef int crypto_completion_t ;


 int EBUSY ;
 int EINPROGRESS ;
 int __gcm_hash_assoc_done (struct aead_request*,int) ;
 int __gcm_hash_assoc_remain_done (struct aead_request*,int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_hash_assoc_done ;
 int gcm_hash_assoc_remain_done ;
 int gcm_hash_update (struct aead_request*,struct crypto_gcm_req_priv_ctx*,int ,int ,int ) ;
 unsigned int gcm_remain (int ) ;

__attribute__((used)) static void __gcm_hash_init_done(struct aead_request *req, int err)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 crypto_completion_t complete;
 unsigned int remain = 0;

 if (!err && req->assoclen) {
  remain = gcm_remain(req->assoclen);
  complete = remain ? gcm_hash_assoc_done :
   gcm_hash_assoc_remain_done;
  err = gcm_hash_update(req, pctx, complete,
          req->assoc, req->assoclen);
  if (err == -EINPROGRESS || err == -EBUSY)
   return;
 }

 if (remain)
  __gcm_hash_assoc_done(req, err);
 else
  __gcm_hash_assoc_remain_done(req, err);
}
