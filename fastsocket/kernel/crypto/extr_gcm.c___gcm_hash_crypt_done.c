
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_ghash_ctx {int cryptlen; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINPROGRESS ;
 int __gcm_hash_crypt_remain_done (struct aead_request*,int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_hash_crypt_remain_done ;
 int gcm_hash_remain (struct aead_request*,struct crypto_gcm_req_priv_ctx*,unsigned int,int ) ;
 unsigned int gcm_remain (int ) ;

__attribute__((used)) static void __gcm_hash_crypt_done(struct aead_request *req, int err)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
 unsigned int remain;

 if (!err) {
  remain = gcm_remain(gctx->cryptlen);
  BUG_ON(!remain);
  err = gcm_hash_remain(req, pctx, remain,
          gcm_hash_crypt_remain_done);
  if (err == -EINPROGRESS || err == -EBUSY)
   return;
 }

 __gcm_hash_crypt_remain_done(req, err);
}
