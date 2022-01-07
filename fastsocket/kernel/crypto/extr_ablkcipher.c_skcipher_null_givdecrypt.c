
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_givcrypt_request {int creq; } ;


 int crypto_ablkcipher_decrypt (int *) ;

int skcipher_null_givdecrypt(struct skcipher_givcrypt_request *req)
{
 return crypto_ablkcipher_decrypt(&req->creq);
}
