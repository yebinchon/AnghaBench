
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_gcm_ghash_ctx {int (* complete ) (struct aead_request*,int) ;} ;
struct crypto_gcm_req_priv_ctx {int iauth_tag; int auth_tag; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;


 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int crypto_xor (int ,int ,int) ;
 int stub1 (struct aead_request*,int) ;

__attribute__((used)) static void __gcm_hash_final_done(struct aead_request *req, int err)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

 if (!err)
  crypto_xor(pctx->auth_tag, pctx->iauth_tag, 16);

 gctx->complete(req, err);
}
