
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct crypto_authenc_ctx {struct crypto_ablkcipher* enc; } ;
struct crypto_aead {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct aead_request {unsigned int cryptlen; int iv; int src; struct scatterlist* dst; } ;
struct ablkcipher_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,struct aead_request*) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,struct scatterlist*,unsigned int,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,struct crypto_ablkcipher*) ;
 struct ablkcipher_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int crypto_ablkcipher_encrypt (struct ablkcipher_request*) ;
 int crypto_ablkcipher_reqsize (struct crypto_ablkcipher*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_encrypt_done ;
 int crypto_authenc_genicv (struct aead_request*,int *,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int crypto_authenc_encrypt(struct aead_request *req)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct ablkcipher_request *abreq = aead_request_ctx(req);
 struct crypto_ablkcipher *enc = ctx->enc;
 struct scatterlist *dst = req->dst;
 unsigned int cryptlen = req->cryptlen;
 u8 *iv = (u8 *)(abreq + 1) + crypto_ablkcipher_reqsize(enc);
 int err;

 ablkcipher_request_set_tfm(abreq, enc);
 ablkcipher_request_set_callback(abreq, aead_request_flags(req),
     crypto_authenc_encrypt_done, req);
 ablkcipher_request_set_crypt(abreq, req->src, dst, cryptlen, req->iv);

 memcpy(iv, req->iv, crypto_aead_ivsize(authenc));

 err = crypto_ablkcipher_encrypt(abreq);
 if (err)
  return err;

 return crypto_authenc_genicv(req, iv, CRYPTO_TFM_REQ_MAY_SLEEP);
}
