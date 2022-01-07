
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_req_priv_ctx {int dummy; } ;
struct aead_request {int assoclen; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINPROGRESS ;
 int __gcm_hash_assoc_remain_done (struct aead_request*,int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_hash_assoc_remain_done ;
 int gcm_hash_remain (struct aead_request*,struct crypto_gcm_req_priv_ctx*,unsigned int,int ) ;
 unsigned int gcm_remain (int ) ;

__attribute__((used)) static void __gcm_hash_assoc_done(struct aead_request *req, int err)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 unsigned int remain;

 if (!err) {
  remain = gcm_remain(req->assoclen);
  BUG_ON(!remain);
  err = gcm_hash_remain(req, pctx, remain,
          gcm_hash_assoc_remain_done);
  if (err == -EINPROGRESS || err == -EBUSY)
   return;
 }

 __gcm_hash_assoc_remain_done(req, err);
}
