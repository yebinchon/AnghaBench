
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_givcrypt_request {int giv; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 struct skcipher_givcrypt_request* aead_request_ctx (struct aead_request*) ;
 int authenc_request_complete (struct aead_request*,int) ;
 int crypto_authenc_genicv (struct aead_request*,int ,int ) ;

__attribute__((used)) static void crypto_authenc_givencrypt_done(struct crypto_async_request *req,
        int err)
{
 struct aead_request *areq = req->data;

 if (!err) {
  struct skcipher_givcrypt_request *greq = aead_request_ctx(areq);

  err = crypto_authenc_genicv(areq, greq->giv, 0);
 }

 authenc_request_complete(areq, err);
}
