
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_authenc_ctx {int enc; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int iv; int cryptlen; int dst; int src; } ;
struct aead_givcrypt_request {int seq; int * giv; struct aead_request areq; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct crypto_aead* aead_givcrypt_reqtfm (struct aead_givcrypt_request*) ;
 struct skcipher_givcrypt_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_authenc_genicv (struct aead_request*,int *,int ) ;
 int crypto_authenc_givencrypt_done ;
 int crypto_skcipher_givencrypt (struct skcipher_givcrypt_request*) ;
 int skcipher_givcrypt_set_callback (struct skcipher_givcrypt_request*,int ,int ,struct aead_request*) ;
 int skcipher_givcrypt_set_crypt (struct skcipher_givcrypt_request*,int ,int ,int ,int ) ;
 int skcipher_givcrypt_set_giv (struct skcipher_givcrypt_request*,int *,int ) ;
 int skcipher_givcrypt_set_tfm (struct skcipher_givcrypt_request*,int ) ;

__attribute__((used)) static int crypto_authenc_givencrypt(struct aead_givcrypt_request *req)
{
 struct crypto_aead *authenc = aead_givcrypt_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct aead_request *areq = &req->areq;
 struct skcipher_givcrypt_request *greq = aead_request_ctx(areq);
 u8 *iv = req->giv;
 int err;

 skcipher_givcrypt_set_tfm(greq, ctx->enc);
 skcipher_givcrypt_set_callback(greq, aead_request_flags(areq),
           crypto_authenc_givencrypt_done, areq);
 skcipher_givcrypt_set_crypt(greq, areq->src, areq->dst, areq->cryptlen,
        areq->iv);
 skcipher_givcrypt_set_giv(greq, iv, req->seq);

 err = crypto_skcipher_givencrypt(greq);
 if (err)
  return err;

 return crypto_authenc_genicv(areq, iv, CRYPTO_TFM_REQ_MAY_SLEEP);
}
