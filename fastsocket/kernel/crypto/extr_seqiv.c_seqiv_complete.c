
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_givcrypt_request {int dummy; } ;
struct crypto_async_request {struct skcipher_givcrypt_request* data; } ;


 int seqiv_complete2 (struct skcipher_givcrypt_request*,int) ;
 int skcipher_givcrypt_complete (struct skcipher_givcrypt_request*,int) ;

__attribute__((used)) static void seqiv_complete(struct crypto_async_request *base, int err)
{
 struct skcipher_givcrypt_request *req = base->data;

 seqiv_complete2(req, err);
 skcipher_givcrypt_complete(req, err);
}
