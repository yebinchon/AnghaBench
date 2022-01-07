
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_authenc_ctx {int enc; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;


 struct ablkcipher_request* aead_request_ctx (struct aead_request*) ;
 int authenc_request_complete (struct aead_request*,int) ;
 int crypto_ablkcipher_reqsize (int ) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_genicv (struct aead_request*,int *,int ) ;

__attribute__((used)) static void crypto_authenc_encrypt_done(struct crypto_async_request *req,
     int err)
{
 struct aead_request *areq = req->data;

 if (!err) {
  struct crypto_aead *authenc = crypto_aead_reqtfm(areq);
  struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
  struct ablkcipher_request *abreq = aead_request_ctx(areq);
  u8 *iv = (u8 *)(abreq + 1) +
    crypto_ablkcipher_reqsize(ctx->enc);

  err = crypto_authenc_genicv(areq, iv, 0);
 }

 authenc_request_complete(areq, err);
}
