
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_authenc_ctx {int enc; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int data; int complete; } ;
struct aead_request {unsigned int cryptlen; int dst; int src; TYPE_1__ base; int * iv; } ;
struct ablkcipher_request {int dummy; } ;


 int EINVAL ;
 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,unsigned int,int *) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,int ) ;
 struct ablkcipher_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int crypto_ablkcipher_decrypt (struct ablkcipher_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_iverify (struct aead_request*,int *,unsigned int) ;

__attribute__((used)) static int crypto_authenc_decrypt(struct aead_request *req)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct ablkcipher_request *abreq = aead_request_ctx(req);
 unsigned int cryptlen = req->cryptlen;
 unsigned int authsize = crypto_aead_authsize(authenc);
 u8 *iv = req->iv;
 int err;

 if (cryptlen < authsize)
  return -EINVAL;
 cryptlen -= authsize;

 err = crypto_authenc_iverify(req, iv, cryptlen);
 if (err)
  return err;

 ablkcipher_request_set_tfm(abreq, ctx->enc);
 ablkcipher_request_set_callback(abreq, aead_request_flags(req),
     req->base.complete, req->base.data);
 ablkcipher_request_set_crypt(abreq, req->src, req->dst, cryptlen, iv);

 return crypto_ablkcipher_decrypt(abreq);
}
