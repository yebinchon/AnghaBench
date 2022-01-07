
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_ctx {int reqoff; struct crypto_ahash* auth; } ;
struct crypto_ahash {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int complete; int cryptlen; int sg; int update_complete; int * tail; } ;
struct ahash_request {int dummy; } ;
struct aead_request {int assoclen; int assoc; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 int * ERR_PTR (int) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 unsigned int aead_request_flags (struct aead_request*) ;
 int ahash_request_set_callback (struct ahash_request*,unsigned int,int ,struct aead_request*) ;
 int ahash_request_set_crypt (struct ahash_request*,int ,int *,int ) ;
 int ahash_request_set_tfm (struct ahash_request*,struct crypto_ahash*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 scalar_t__ crypto_ahash_alignmask (struct crypto_ahash*) ;
 int crypto_ahash_finup (struct ahash_request*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_update (struct ahash_request*) ;

__attribute__((used)) static u8 *crypto_authenc_ahash_fb(struct aead_request *req, unsigned int flags)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct crypto_ahash *auth = ctx->auth;
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct ahash_request *ahreq = (void *)(areq_ctx->tail + ctx->reqoff);
 u8 *hash = areq_ctx->tail;
 int err;

 hash = (u8 *)ALIGN((unsigned long)hash + crypto_ahash_alignmask(auth),
       crypto_ahash_alignmask(auth) + 1);

 ahash_request_set_tfm(ahreq, auth);

 err = crypto_ahash_init(ahreq);
 if (err)
  return ERR_PTR(err);

 ahash_request_set_crypt(ahreq, req->assoc, hash, req->assoclen);
 ahash_request_set_callback(ahreq, aead_request_flags(req) & flags,
       areq_ctx->update_complete, req);

 err = crypto_ahash_update(ahreq);
 if (err)
  return ERR_PTR(err);

 ahash_request_set_crypt(ahreq, areq_ctx->sg, hash,
    areq_ctx->cryptlen);
 ahash_request_set_callback(ahreq, aead_request_flags(req) & flags,
       areq_ctx->complete, req);

 err = crypto_ahash_finup(ahreq);
 if (err)
  return ERR_PTR(err);

 return hash;
}
