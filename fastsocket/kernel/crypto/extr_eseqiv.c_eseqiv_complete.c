
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_async_request {struct skcipher_givcrypt_request* data; } ;


 int eseqiv_complete2 (struct skcipher_givcrypt_request*) ;
 int skcipher_givcrypt_complete (struct skcipher_givcrypt_request*,int) ;

__attribute__((used)) static void eseqiv_complete(struct crypto_async_request *base, int err)
{
 struct skcipher_givcrypt_request *req = base->data;

 if (err)
  goto out;

 eseqiv_complete2(req);

out:
 skcipher_givcrypt_complete(req, err);
}
