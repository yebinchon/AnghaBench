
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_gcm_ghash_ctx {int complete; int cryptlen; int src; } ;
struct ablkcipher_request {int dummy; } ;
struct TYPE_2__ {struct ablkcipher_request abreq; } ;
struct crypto_gcm_req_priv_ctx {int iauth_tag; int auth_tag; struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int cryptlen; int dst; } ;


 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int crypto_ablkcipher_encrypt (struct ablkcipher_request*) ;
 int crypto_gcm_init_crypt (struct ablkcipher_request*,struct aead_request*,int ) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int crypto_xor (int ,int ,int) ;
 int gcm_enc_copy_hash (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ;
 int gcm_enc_hash_done ;
 int gcm_encrypt_done ;
 int gcm_hash (struct aead_request*,struct crypto_gcm_req_priv_ctx*) ;

__attribute__((used)) static int crypto_gcm_encrypt(struct aead_request *req)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct ablkcipher_request *abreq = &pctx->u.abreq;
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
 int err;

 crypto_gcm_init_crypt(abreq, req, req->cryptlen);
 ablkcipher_request_set_callback(abreq, aead_request_flags(req),
     gcm_encrypt_done, req);

 gctx->src = req->dst;
 gctx->cryptlen = req->cryptlen;
 gctx->complete = gcm_enc_hash_done;

 err = crypto_ablkcipher_encrypt(abreq);
 if (err)
  return err;

 err = gcm_hash(req, pctx);
 if (err)
  return err;

 crypto_xor(pctx->auth_tag, pctx->iauth_tag, 16);
 gcm_enc_copy_hash(req, pctx);

 return 0;
}
