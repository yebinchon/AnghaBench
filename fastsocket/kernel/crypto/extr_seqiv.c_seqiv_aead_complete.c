
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {struct aead_givcrypt_request* data; } ;
struct aead_givcrypt_request {int dummy; } ;


 int aead_givcrypt_complete (struct aead_givcrypt_request*,int) ;
 int seqiv_aead_complete2 (struct aead_givcrypt_request*,int) ;

__attribute__((used)) static void seqiv_aead_complete(struct crypto_async_request *base, int err)
{
 struct aead_givcrypt_request *req = base->data;

 seqiv_aead_complete2(req, err);
 aead_givcrypt_complete(req, err);
}
